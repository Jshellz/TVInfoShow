import '../entities/movie.dart';
import '../repositories/movie_repository.dart';

class GetPopularMovies {
  final MovieRepository repository;

  GetPopularMovies(this.repository);

  // Fetches a list of popular movies, optionally paginated by [page].
  Future<List<Movie>> call({int page = 1}) {
    return repository.getPopularMovies(page: page);
  }
}
