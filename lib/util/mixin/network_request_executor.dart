import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data_provider.dart';
import '../../feature/app/bloc/app_bloc.dart';
import '../../util/helper/logger_helper.dart';
import '../service/service_locator.dart';

// The generic S stands for State
mixin RequestExecutor<S> on BlocBase<S> {
  final DataProvider dataProvider = DataProvider();
  final LoggerHelper logger = locator<LoggerHelper>();

  void executeRequest<T>({
    required BuildContext context,
    required Future<T> request,
    required Function success,
  }) async {
    context.read<AppBloc>().add(AppLoadingEvent());
    var result = await dataProvider.executeRequest(request: request).whenComplete(
          () => context.read<AppBloc>().add(AppLoadedEvent()),
        );
    result.fold(
      (error) {
        context.read<AppBloc>().add(AppFailureEvent(message: error.toString()));
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
