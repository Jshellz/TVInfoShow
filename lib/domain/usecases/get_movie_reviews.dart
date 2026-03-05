import '../entities/review.dart';
import '../repositories/movie_repository.dart';

class GetMovieReviews {
  final MovieRepository repository;

  GetMovieReviews(this.repository);

  // Loads reviews for a movie.
  Future<List<Review>> call(int movieId) {
    return repository.getMovieReviews(movieId);
  }
}
