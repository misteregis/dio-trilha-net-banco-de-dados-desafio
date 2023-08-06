using System.Text.Json.Serialization;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    public class ResponseChallengeTwoToSixModel
    {
        [JsonPropertyName("Nome")]
        public string Name { get; internal set; }

        [JsonPropertyName("Ano")]
        public int Year { get; internal set; }

        [JsonPropertyName("Duracao")]
        public int Duration { get; internal set; }
    }
}