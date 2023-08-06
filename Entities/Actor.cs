using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DioTrilhaNetBancoDeDadosDesafio.Models
{
    [Table("actors")]
    public class Actor
    {
        [Key]
        [Column("id")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; internal set; }

        [Column("first_name")]
        [MaxLength(20)]
        public string FirstName { get; set; }

        [Column("last_name")]
        [MaxLength(20)]
        public string LastName { get; set; }

        [Column("gender")]
        [MaxLength(1)]
        public string Gender { get; set; }
    }
}