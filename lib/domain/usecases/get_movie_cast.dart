import '../entities/cast.dart';
import '../repositories/movie_repository.dart';

class GetMovieCast {
  final MovieRepository repository;

  GetMovieCast(this.repository);

  // Loads the cast for a movie.
  Future<List<Cast>> call(int movieId) {
    return repository.getMovieCast(movieId);
  }
}
