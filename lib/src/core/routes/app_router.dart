import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/pages/login.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/pages/register.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/favorites/presentation/pages/favorites_page.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/favorites/presentation/pages/favorites_search_page.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/home/presentation/pages/home_page.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/main_page.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/profile/presentation/pages/profile_page.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/scan%20food/presentation/pages/scan_food_page.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/search/presentation/pages/search_page.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/search/presentation/pages/search_view_page.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/splash/presentation/pages/onboarding.dart";
import "../../feature/splash/presentation/pages/splash_page.dart";
import "app_route_name.dart";

final class AppRouter{


  static GoRouter router = GoRouter(
      initialLocation: AppRouteName.onboarding,
      routes: <RouteBase>[

        /// Splash
        GoRoute(
          path: AppRouteName.splashPage,
          builder: (BuildContext context, GoRouterState state) => const SplashPage(),
        ),

        /// Onboarding
        GoRoute(
          path: AppRouteName.onboarding,
          builder: (BuildContext context, GoRouterState state) => const Onboarding(),
        ),

        /// Auth
        GoRoute(
          path: AppRouteName.login,
          builder: (BuildContext context, GoRouterState state) => const Login(),
          routes: [
            GoRoute(
              path: AppRouteName.register,
              builder: (BuildContext context, GoRouterState state) => const Register(),
            ),
          ]
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

            /// Scan Food
            GoRoute(
              path: AppRouteName.scan,
              builder: (BuildContext context, GoRouterState state) => const ScanFoodPage(),
            ),

            /// Favorites
            GoRoute(
              path: AppRouteName.favorites,
              builder: (BuildContext context, GoRouterState state) => const FavoritesPage(),
              routes: [
                GoRoute(
                  path: AppRouteName.favoritesSearchView,
                  builder: (BuildContext context, GoRouterState state) => const FavoritesSearchPage(),
                ),
              ]
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