using System.Text.Json.Serialization;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    public class ResponseChallengeTenElevenModel
    {
        [JsonPropertyName("Nome")]
        public string Name { get; internal set; }

        [JsonPropertyName("Genero")]
        public string Gender { get; internal set; }
    }
}