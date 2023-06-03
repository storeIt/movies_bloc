import 'package:dartz/dartz.dart';

abstract interface class AppRepository {
  Right<Object, T> fetchMovies<T>();
}
