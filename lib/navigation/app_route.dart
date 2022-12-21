import 'package:fashion_app/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../main.dart';

import '../screens/startScreens.dart';

class AppRouter {
  final AppStateManager appStateManager;

  AppRouter(
    this.appStateManager,
  );

  late final router = GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: appStateManager,
    initialLocation: '/login',
    routes: [
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const MyLoginScreenPage(),
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(
              state.error.toString(),
            ),
          ),
        ),
      );
    },
    redirect: (state) {
      final loggedIn = appStateManager.isLoggedIn;
      final loggingIn = state.subloc == '/login';
      if (!loggedIn) return loggingIn ? null : '/login';

      final isOnboardingComplete = appStateManager.isOnboardingComplete;
      final onboarding = state.subloc == '/onboarding';
      if (!isOnboardingComplete) {
        return onboarding ? null : '/onboarding';
      }
      if (loggingIn || onboarding) return '/${FooderlichTab.explore}';
      return null;
    },
  );
}
