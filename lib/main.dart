import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'feature/app/view/app.dart';
import 'util/helper/logger_helper.dart';
import 'util/service/service_locator.dart';

void main() {
  setupLocator();

  FlutterError.onError = (FlutterErrorDetails details) {
    WidgetsFlutterBinding.ensureInitialized();
    if (kDebugMode) locator<LoggerHelper>().e('FlutterError', details.exception, details.stack);
  };

  runZonedGuarded(() {
    runApp(const App());
  }, (error, stack) {
    if (kDebugMode) locator<LoggerHelper>().e('$error', error, stack);
  });
}
