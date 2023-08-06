using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    [Table("movies")]
    public class Movie
    {
        [Key]
        [Column("id")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; internal set; }

        [Column("name")]
        [MaxLength(50)]
        public string Name { get; set; }

        [Column("year")]
        public int Year { get; set; }

        [Column("duration")]
        public int Duration { get; set; }
    }
}