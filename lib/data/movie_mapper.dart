import '../feature/movies/model/movie.dart';
import 'model/movie_entity.dart';

final class MovieMapper {
  Movie toMovie(MovieEntity entity) {
    return Movie(
      title: entity.title,
      imageUrl: entity.imageUrl,
      rating: entity.rating,
    );
  }

  List<Movie> toMovies(List<MovieEntity> entities) {
    return entities.map((e) => toMovie(e)).toList();
  }
}
