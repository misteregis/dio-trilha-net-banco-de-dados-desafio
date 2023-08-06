using DioTrilhaNetBancoDeDadosDesafio.Context;
using DioTrilhaNetBancoDeDadosDesafio.Filters;
using DioTrilhaNetBancoDeDadosDesafio.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.OpenApi.Models;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllers();

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(c =>
{
    c.EnableAnnotations();
    c.DocumentFilter<PolymorphismDocumentFilter<Actor>>();
    c.DocumentFilter<PolymorphismDocumentFilter<Genre>>();
    c.DocumentFilter<PolymorphismDocumentFilter<Movie>>();
    c.DocumentFilter<PolymorphismDocumentFilter<MovieCast>>();
    c.DocumentFilter<PolymorphismDocumentFilter<MovieGenre>>();
    c.SwaggerDoc("v1", new OpenApiInfo
    {
        Version = "v1",
        Title = "DIO — Trilha .NET - Banco de Dados",
        Description = "Banco de dados de um site de filmes, onde são armazenados dados sobre os filmes e seus atores.",
        Contact = new OpenApiContact
        {
            Name = "Reginaldo Izid\u00F3rio",
            Email = "misteregis@gmail.com",
            Url = new Uri("https://github.com/misteregis")
        }
    });
});

builder.Services.AddDbContext<MovieDbContext>(options =>
    options.UseSqlite(builder.Configuration.GetConnectionString("SqliteConnectionString"))
);

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI(c => c.SwaggerEndpoint("v1/swagger.json", "v1"));
}

app.UseCors(options => options
    .AllowAnyOrigin()
    .AllowAnyHeader()
    .AllowAnyMethod()
);

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
