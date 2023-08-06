using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    [Table("movie_genres")]
    public class MovieGenre
    {
        [Key]
        [Column("id")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; internal set; }

        [Column("gender_id")]
        public int GenderId { get; set; }

        [NotMapped]
        [ForeignKey("FK_gender_id")]
        public Genre Genre { get; set; }

        [Column("movie_id")]
        public int MovieId { get; set; }

        [NotMapped]
        [ForeignKey("FK_movie_id")]
        public Movie Movie { get; set; }
    }
}