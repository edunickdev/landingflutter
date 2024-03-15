import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final routes = GoRouter(
  initialLocation: "/INICIO",
  routes: [
    GoRoute(
      path: "/INICIO",
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: const HomeScreen(),
      ),
    ),
    GoRoute(
      path: "/ALIADOS",
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: const AliadosScreen(),
      ),
    ),
    GoRoute(
      path: "/IMPACTO",
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: const ImpactoScreen(),
      ),
    ),
    GoRoute(
      path: "/NOSOTROS",
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: const NosotrosScreen(),
      ),
    ),
  ],
);
