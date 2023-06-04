import '../../../base/repository/base_repository.dart';
import '../../../data/movie_mapper.dart';
import '../model/movie.dart';

final class MovieRepository extends BaseRepository {
  final MovieMapper _movieMapper = MovieMapper();

  Future<List<Movie>> fetchMovies() async {
    final response = await appRepository.fetchMovies();
    return _movieMapper.toMovies(response);
  }
}
