using System.Text.Json.Serialization;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    public class ResponseChallengeTwelveModel
    {
        [JsonPropertyName("Nome")]
        public string Name { get; internal set; }

        [JsonPropertyName("PrimeiroNome")]
        public string FirstName { get; internal set; }

        [JsonPropertyName("UltimoNome")]
        public string LastName { get; internal set; }

        [JsonPropertyName("Papel")]
        public string Role { get; internal set; }
    }
}