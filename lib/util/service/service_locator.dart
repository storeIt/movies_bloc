import 'package:get_it/get_it.dart';

import 'retrofit_service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // Register services
  locator.registerLazySingleton<RetrofitService>(() => RetrofitService());
}
