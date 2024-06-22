import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "../../feature/splash/presentation/pages/splash_page.dart";
import "app_route_name.dart";

final class AppRouter{


  static GoRouter router = GoRouter(
      initialLocation: AppRouteName.splashPage,
      routes: <RouteBase>[
        GoRoute(
          path: AppRouteName.splashPage,
          builder: (BuildContext context, GoRouterState state) => const SplashPage(),
        ),
      ]
  );
}