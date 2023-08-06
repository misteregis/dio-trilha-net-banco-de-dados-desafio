using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text.Json.Serialization;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    [Table("movies_cast")]
    public class MovieCast
    {
        [Key]
        [Column("id")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; internal set; }

        [JsonIgnore]
        [Column("actor_id")]
        public int ActorId { get; set; }

        [NotMapped]
        [ForeignKey("FK_actor_id")]
        public Actor Actor { get; set; }

        [JsonIgnore]
        [Column("movie_id")]
        public int MovieId { get; set; }

        [NotMapped]
        [ForeignKey("FK_movie_id")]
        public Movie Movie { get; set; }

        [Column("role")]
        [MaxLength(30)]
        public string Role { get; set; }
    }
}