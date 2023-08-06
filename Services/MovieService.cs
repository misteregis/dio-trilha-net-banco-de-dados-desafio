using DioTrilhaNetBancoDeDadosDesafio.Context;
using DioTrilhaNetBancoDeDadosDesafio.Models;

namespace DioTrilhaNetBancoDeDadosDesafio.Services
{
    public class MovieService
    {
        private readonly MovieDbContext _context;

        public MovieService(MovieDbContext context)
        {
            _context = context;
        }

        private IQueryable<ResponseChallengeTwoToSixModel> GetMovies()
        {
            var result = _context.Movies
                        .Select(movie => new ResponseChallengeTwoToSixModel
                        {
                            Name = movie.Name,
                            Year = movie.Year,
                            Duration = movie.Duration
                        });

            return result;
        }

        public IQueryable<ResponseChallengeOneModel> GetOne()
        {
            return GetMovies().Select(movie => new ResponseChallengeOneModel
            {
                Name = movie.Name,
                Year = movie.Year
            });
        }

        public IQueryable<ResponseChallengeTwoToSixModel> GetTwo() => GetMovies().OrderBy(m => m.Year);

        public IQueryable<ResponseChallengeTwoToSixModel> GetThree()
        {
            var find = "de volta para o futuro".ToUpper();

            return GetMovies().Where(m => m.Name.ToUpper() == find);
        }

        public IQueryable<ResponseChallengeTwoToSixModel> GetFour() => GetMovies().Where(m => m.Year > 1997);

        public IQueryable<ResponseChallengeTwoToSixModel> GetFive() => GetMovies().Where(m => m.Year > 2000);

        public IQueryable<ResponseChallengeTwoToSixModel> GetSix()
        {
            var result = GetMovies()
                        .Where(movie => movie.Duration > 100 && movie.Duration < 150)
                        .OrderBy(item => item.Duration);

            return result;
        }

        public IQueryable<ResponseChallengeSevenModel> GetSeven()
        {
            var movies = _context.Movies;
            var result = movies.GroupBy(movie => movie.Year)
                        .Select(group => new ResponseChallengeSevenModel
                        {
                            Year = group.Key,
                            Amount = group.Count()
                        })
                        .OrderByDescending(item =>
                            movies.Where(movie => movie.Year == item.Year)
                                  .Sum(movie => movie.Duration)
                        );

            return result;
        }

        public IEnumerable<ResponseChallengeEightNineModel> GetEight(string searchTerm = null)
        {
            var result = _context.Actors
                        .Where(a => a.Gender.Equals(searchTerm))
                        .Select(actor => new ResponseChallengeEightNineModel
                        {
                            Id = actor.Id,
                            FirstName = actor.FirstName,
                            LastName = actor.LastName,
                            Gender = actor.Gender
                        });

            return result;
        }

        public IEnumerable<ResponseChallengeEightNineModel> GetNine(string s = null) => GetEight(s).OrderBy(o => o.FirstName);

        public IEnumerable<ResponseChallengeTenElevenModel> GetTen(string searchTerm = null)
        {
            var query = from movie in _context.Movies
                        join movieGenre in _context.MovieGenres on movie.Id equals movieGenre.MovieId
                        join genre in _context.Genres on movieGenre.GenderId equals genre.Id
                        where string.IsNullOrEmpty(searchTerm) || genre.Gender.Contains(searchTerm)
                        select new ResponseChallengeTenElevenModel
                        {
                            Name = movie.Name,
                            Gender = genre.Gender
                        };

            return query;
        }

        public IEnumerable<ResponseChallengeTenElevenModel> GetEleven(string s = null) => GetTen(s);

        public IEnumerable<ResponseChallengeTwelveModel> GetTwelve()
        {
            var query = from movie in _context.Movies
                        join movieCast in _context.MoviesCast on movie.Id equals movieCast.MovieId
                        join actor in _context.Actors on movieCast.ActorId equals actor.Id
                        select new ResponseChallengeTwelveModel
                        {
                            Name = movie.Name,
                            FirstName = actor.FirstName,
                            LastName = actor.LastName,
                            Role = movieCast.Role
                        };

            return query;
        }
    }
}