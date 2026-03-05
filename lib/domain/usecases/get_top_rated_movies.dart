import '../entities/movie.dart';
import '../repositories/movie_repository.dart';

class GetTopRatedMovies {
  final MovieRepository repository;

  GetTopRatedMovies(this.repository);

  // Fetches a list of top-rated movies, optionally paginated by [page].
  Future<List<Movie>> call({int page = 1}) {
    return repository.getTopRatedMovies(page: page);
  }
}
