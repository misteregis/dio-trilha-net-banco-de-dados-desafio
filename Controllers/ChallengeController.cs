using DioTrilhaNetBancoDeDadosDesafio.Context;
using DioTrilhaNetBancoDeDadosDesafio.Models;
using DioTrilhaNetBancoDeDadosDesafio.Services;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.Annotations;

namespace DioTrilhaNetBancoDeDadosDesafio.Controllers
{
    [ApiController]
    [Tags("DIO - Desafio")]
    [Route("challenge")]
    [Produces("application/json")]
    public class ChallengeController : ControllerBase
    {
        private readonly MovieService _service;

        public ChallengeController(MovieDbContext context) => _service = new MovieService(context);

        [HttpGet("1")]
        [SwaggerOperation("#1 - Buscar o nome e ano dos filmes")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeOneModel>), StatusCodes.Status200OK)]
        public ActionResult GetOne()
        {
            var query = _service.GetOne();

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("2")]
        [SwaggerOperation("#2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeTwoToSixModel>), StatusCodes.Status200OK)]
        public ActionResult GetTwo()
        {
            var query = _service.GetTwo();

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("3")]
        [SwaggerOperation("#3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeTwoToSixModel>), StatusCodes.Status200OK)]
        public ActionResult GetThree()
        {
            var query = _service.GetThree();

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("4")]
        [SwaggerOperation("#4 - Buscar os filmes lançados em 1997")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeTwoToSixModel>), StatusCodes.Status200OK)]
        public ActionResult GetFour()
        {
            var query = _service.GetFour();

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("5")]
        [SwaggerOperation("#5 - Buscar os filmes lançados APÓS o ano 2000")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeTwoToSixModel>), StatusCodes.Status200OK)]
        public ActionResult GetFive()
        {
            var query = _service.GetFive();

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("6")]
        [SwaggerOperation("#6 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeTwoToSixModel>), StatusCodes.Status200OK)]
        public ActionResult GetSix()
        {
            var query = _service.GetSix();

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("7")]
        [SwaggerOperation("#7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeSevenModel>), StatusCodes.Status200OK)]
        public ActionResult GetSeven()
        {
            var query = _service.GetSeven();

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("8")]
        [SwaggerOperation("#8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeEightNineModel>), StatusCodes.Status200OK)]
        public ActionResult GetEight()
        {
            var query = _service.GetEight("M");

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("9")]
        [SwaggerOperation("#9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeEightNineModel>), StatusCodes.Status200OK)]
        public ActionResult GetNine()
        {
            var query = _service.GetNine("F");

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("10")]
        [SwaggerOperation("#10 - Buscar o nome do filme e o gênero")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeTenElevenModel>), StatusCodes.Status200OK)]
        public ActionResult GetTen()
        {
            var query = _service.GetTen();

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("11")]
        [SwaggerOperation("#11 - Buscar o nome do filme e o gênero do tipo \"Mistério\"")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeTenElevenModel>), StatusCodes.Status200OK)]
        public ActionResult GetEleven()
        {
            var query = _service.GetEleven("Mistério");

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }

        [HttpGet("12")]
        [SwaggerOperation("#12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel")]
        [ProducesResponseType(typeof(void), StatusCodes.Status204NoContent)]
        [ProducesResponseType(typeof(IEnumerable<ResponseChallengeTwelveModel>), StatusCodes.Status200OK)]
        public ActionResult GetTwelve()
        {
            var query = _service.GetTwelve();

            if (!query.Any())
                return NoContent();

            return Ok(query.ToList());
        }
    }
}