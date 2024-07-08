import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/controller/auth_controller.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/controller/favorites_controller.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/home/controller/home_controller.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/scan%20food/controller/scan_food_controller.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/feature/splash/controller/splash_controller.dart";
import "core/widget/app_material_context.dart";

class App extends StatelessWidget {
  const App({super.key});

  static void run() => runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthController(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ScanFoodController(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthController(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoritesController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SplashController(),
        ),
      ],
      child: const App(),
    ),
  );

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
    designSize: const Size(450, 932),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (BuildContext context, Widget? child) => AppMaterialContext(),
  );
}