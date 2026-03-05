import '../entities/movie_detail.dart';
import '../repositories/movie_repository.dart';

class GetMovieDetail {
  final MovieRepository repository;

  GetMovieDetail(this.repository);

  // Retrieves detailed information about a movie identified by [movieId].
  Future<MovieDetail> call(int movieId) {
    return repository.getMovieDetail(movieId);
  }
}
