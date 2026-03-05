import '../entities/genre.dart';
import '../repositories/movie_repository.dart';

class GetGenres {
  final MovieRepository repository;

  GetGenres(this.repository);

  // Fetches the list of all available genres.
  Future<List<Genre>> call() {
    return repository.getGenres();
  }
}
