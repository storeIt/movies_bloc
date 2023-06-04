import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../repository/movie_repository.dart';

part 'movies_state.dart';

class MovieCubit extends Cubit<MoviesState> {
  final MovieRepository repository;

  MovieCubit(this.repository) : super(MoviesInitial());
}
