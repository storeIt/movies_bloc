part of 'app_bloc.dart';

@immutable
sealed class AppState {}

class AppInitialState extends AppState {}

class AppLoadingState extends AppState {}

class AppLoadedState extends AppState {}

class AppFailureState<E> extends AppState {
  final E error;

  AppFailureState(this.error);
}
