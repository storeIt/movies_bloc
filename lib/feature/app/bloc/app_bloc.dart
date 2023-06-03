import 'package:meta/meta.dart';

import '../../../base/bloc/base_bloc.dart';
import '../../../util/mixin/network_request_executor.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends BaseBloc with RequestExecutor {
  AppBloc() : super(AppInitialState()) {
    on<AppLoadingEvent>((event, emit) {});
    on<AppLoadedEvent>((event, emit) {});
    on<AppFailureEvent>((event, emit) {});
  }
}
