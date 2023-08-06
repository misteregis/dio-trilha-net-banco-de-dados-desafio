using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    [Table("genres")]
    public class Genre
    {
        [Key]
        [Column("id")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; internal set; }

        [Column("gender")]
        [MaxLength(20)]
        public string Gender { get; set; }
    }
}