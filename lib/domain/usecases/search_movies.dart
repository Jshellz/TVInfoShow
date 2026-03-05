import '../entities/movie.dart';
import '../repositories/movie_repository.dart';

class SearchMovies {
  final MovieRepository repository;

  SearchMovies(this.repository);

  // Searches for movies matching the [query], optionally paginated by [page].
  Future<List<Movie>> call(String query, {int page = 1}) {
    return repository.searchMovies(query, page: page);
  }
}
