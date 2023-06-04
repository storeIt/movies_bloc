import '../model/movie_entity.dart';

abstract interface class AppRepository {
  Future<List<MovieEntity>> fetchMovies();
}
