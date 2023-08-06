using System.Reflection;
using Microsoft.OpenApi.Any;
using Microsoft.OpenApi.Models;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace DioTrilhaNetBancoDeDadosDesafio.Filters
{
    public class PolymorphismDocumentFilter<T> : IDocumentFilter where T : class
    {
        public void Apply(OpenApiDocument swaggerDoc, DocumentFilterContext context)
        {
            RegisterSubClasses(context, typeof(T));
        }

        private static void RegisterSubClasses(DocumentFilterContext context, Type abstractType)
        {
            const string discriminatorName = "$type";
            var schemaRepository = context.SchemaRepository.Schemas;
            var schemaGenerator = context.SchemaGenerator;

            if (!schemaRepository.TryGetValue(abstractType.Name, out OpenApiSchema parentSchema))
            {
                parentSchema = schemaGenerator.GenerateSchema(abstractType, context.SchemaRepository);
            }

            // define uma propriedade discriminadora (deve ser obrigatório)
            parentSchema.Discriminator = new OpenApiDiscriminator { PropertyName = discriminatorName };
            parentSchema.Required.Add(discriminatorName);

            if (!parentSchema.Properties.ContainsKey(discriminatorName))
                parentSchema.Properties.Add(discriminatorName, new OpenApiSchema { Type = "string", Default = new OpenApiString(abstractType.FullName) });

            // registra todas as subclasses
            var derivedTypes = abstractType.GetTypeInfo().Assembly.GetTypes()
                .Where(x => abstractType != x && abstractType.IsAssignableFrom(x));

            foreach (var type in derivedTypes)
                schemaGenerator.GenerateSchema(type, context.SchemaRepository);
        }
    }
}