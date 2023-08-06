using DioTrilhaNetBancoDeDadosDesafio.Models;
using Microsoft.EntityFrameworkCore;

namespace DioTrilhaNetBancoDeDadosDesafio.Context
{
    public class MovieDbContext : DbContext
    {
        public MovieDbContext(DbContextOptions<MovieDbContext> options) : base(options) { }

        public DbSet<Actor> Actors { get; set; }
        public DbSet<Genre> Genres { get; set; }
        public DbSet<Movie> Movies { get; set; }
        public DbSet<MovieCast> MoviesCast { get; set; }
        public DbSet<MovieGenre> MovieGenres { get; set; }
    }
}