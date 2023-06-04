import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../data/data_provider.dart';
import '../../feature/app/bloc/app_bloc.dart';
import '../../util/helper/logger_helper.dart';
import '../service/service_locator.dart';

mixin RequestExecutor on BlocBase {
  final DataProvider dataProvider = DataProvider();
  final LoggerHelper logger = locator<LoggerHelper>();

  void executeRequest<T>({
    required AppBloc bloc,
    required Future<T> request,
    required Function success,
  }) async {
    bloc.add(AppLoadingEvent());
    var result = await dataProvider.executeRequest(request: request).whenComplete(
          () => bloc.add(AppLoadedEvent()),
        );
    result.fold(
      (error) {
        bloc.add(AppFailureEvent(message: error.toString()));
        onError(error, StackTrace.current);
      },
      (value) {
        success(Right<Object, T>(value));
      },
    );
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    logger.e('NetworkExecutor', error, stackTrace);

    super.onError(error, stackTrace);
  }
}
