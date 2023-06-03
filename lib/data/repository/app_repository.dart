import '../model/movie_raw.dart';

abstract interface class AppRepository {
  Future<List<MovieRaw>> fetchMovies();
}
