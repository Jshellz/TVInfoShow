import '../entities/cast.dart';
import '../entities/genre.dart';
import '../entities/movie.dart';
import '../entities/movie_detail.dart';
import '../entities/review.dart';

abstract class MovieRepository {
  // Gets a list of popular movies.
  Future<List<Movie>> getPopularMovies({int page = 1});

  // Gets a list of top rated movies.
  Future<List<Movie>> getTopRatedMovies({int page = 1});

  // Searches movies by [query] string.
  Future<List<Movie>> searchMovies(String query, {int page = 1});

  // Retrieves detailed information about a movie identified by [movieId].
  Future<MovieDetail> getMovieDetail(int movieId);

  // Loads the cast for a movie.
  Future<List<Cast>> getMovieCast(int movieId);

  // Loads reviews for a movie.
  Future<List<Review>> getMovieReviews(int movieId);

  // Fetches the list of all available genres.
  Future<List<Genre>> getGenres();
}
