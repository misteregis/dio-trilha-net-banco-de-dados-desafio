using System.Text.Json.Serialization;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    public class ResponseChallengeEightNineModel
    {
        [JsonPropertyName("Id")]
        public int Id { get; internal set; }

        [JsonPropertyName("PrimeiroNome")]
        public string FirstName { get; internal set; }

        [JsonPropertyName("UltimoNome")]
        public string LastName { get; internal set; }

        [JsonPropertyName("Genero")]
        public string Gender { get; internal set; }
    }
}