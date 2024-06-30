import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/routes/app_route_name.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/controller/main_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/widgets/custom_bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  final Widget child;
  const MainPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {

    void nextScreen(int index) {
      MainController.currentIndex = index;
      switch (index) {
        case 0:
          context.go(AppRouteName.home);
          break;
        case 1:
          context.go(AppRouteName.search);
          break;
        case 2:
          context.go(AppRouteName.scan);
          break;
        case 3:
          context.go(AppRouteName.favorites);
          break;
        case 4:
          context.go(AppRouteName.profile);
          break;
        default:
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: child,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: MainController.currentIndex,
        onTap: nextScreen,
      ),
    );
  }
}
