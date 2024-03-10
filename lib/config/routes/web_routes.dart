import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final routes = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(path: "/home", builder: (context, state) => const HomeScreen())
  ]
);