using System.Text.Json.Serialization;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    public class ResponseChallengeSevenModel
    {
        [JsonPropertyName("Ano")]
        public int Year { get; internal set; }

        [JsonPropertyName("Quantidade")]
        public int Amount { get; internal set; }
    }
}