import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  BaseBloc(State state) : super(state);
}
