import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/pages/forgot_password.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/pages/forgot_password_pin_code.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/pages/login.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/pages/register.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/pages/set_a_new_password.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/main_page.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/splash/presentation/pages/onboarding_page.dart";
import "../../feature/favorites/presentation/pages/favorites_page.dart";
import "../../feature/home/presentation/pages/home_page.dart";
import "../../feature/profile/presentation/pages/profile_page.dart";
import "../../feature/scan food/presentation/pages/scan_food_page.dart";
import "../../feature/search/presentation/pages/search_page.dart";
import "../../feature/search/presentation/pages/search_view_page.dart";
import "../../feature/splash/presentation/pages/splash_page.dart";
import "app_route_name.dart";

final class AppRouter{

  static GoRouter router = GoRouter(
      initialLocation: AppRouteName.splashPage,
      routes: <RouteBase>[

        /// Splash
        GoRoute(
          path: AppRouteName.splashPage,
          builder: (BuildContext context, GoRouterState state) => const SplashPage(),
        ),

        /// Onboarding
        GoRoute(
          path: AppRouteName.onboarding,
          builder: (BuildContext context, GoRouterState state) => const OnboardingPage(),
        ),

        /// Auth /// Must check!!!
        GoRoute(
          path: AppRouteName.login,
          builder: (BuildContext context, GoRouterState state) => const Login(),
          routes: [
            GoRoute(
              path: AppRouteName.register,
              builder: (BuildContext context, GoRouterState state) => const Register(),
              routes: [
                GoRoute(
                  path: AppRouteName.forgotPassword,
                  builder: (BuildContext context, GoRouterState state) => const ForgotPassword(),
                  routes: [
                    GoRoute(
                      path: AppRouteName.forgotPasswordPinCode,
                      builder: (BuildContext context, GoRouterState state) => const ForgotPasswordPinCode(),
                      routes: [
                        GoRoute(
                          path: AppRouteName.setANewPassword,
                          builder: (BuildContext context, GoRouterState state) => const SetANewPassword(),
                        ),
                      ]
                    ),
                  ]
                ),
              ]
            ),
          ]
        ),

        /// Scan Food
        GoRoute(
          path: AppRouteName.scan,
          builder: (BuildContext context, GoRouterState state) => const ScanFoodPage(),
        ),

        /// Main
        ShellRoute(
          builder: (context, state, child) => MainPage(child: child),
          routes: [
            /// Home
            GoRoute(
              path: AppRouteName.home,
              builder: (BuildContext context, GoRouterState state) => const HomePage(),
            ),

            /// Search
            GoRoute(
              path: AppRouteName.search,
              builder: (BuildContext context, GoRouterState state) => const SearchPage(),
              routes: [
                GoRoute(
                  path: AppRouteName.searchView,
                  builder: (BuildContext context, GoRouterState state) => const SearchViewPage(),
                ),
              ]
            ),

            // /// Scan Food
            // GoRoute(
            //   path: AppRouteName.scan,
            //   builder: (BuildContext context, GoRouterState state) => const ScanFoodPage(),
            // ),

            /// Favorites
            GoRoute(
              path: AppRouteName.favorites,
              builder: (BuildContext context, GoRouterState state) => const FavoritesPage(),
            ),

            /// Profile
            GoRoute(
              path: AppRouteName.profile,
              builder: (BuildContext context, GoRouterState state) => const ProfilePage(),
            ),
          ],
        )
      ]
  );
}