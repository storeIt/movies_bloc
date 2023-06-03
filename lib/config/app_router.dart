import 'package:go_router/go_router.dart';

import '../feature/app/view/app_view.dart';

class AppRouter {
  AppRouter._();

  static GoRouter get router => _router;

  static const String home = '/';

  static final _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: home,
        builder: (context, state) => const AppView(),
      ),
    ],
  );
}
