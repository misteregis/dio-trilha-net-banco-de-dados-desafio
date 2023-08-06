using System.Text.Json.Serialization;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    public class ResponseChallengeOneModel
    {
        [JsonPropertyName("Nome")]
        public string Name { get; internal set; }

        [JsonPropertyName("Ano")]
        public int Year { get; internal set; }
    }
}