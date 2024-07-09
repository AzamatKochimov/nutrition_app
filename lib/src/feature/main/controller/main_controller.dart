import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/routes/app_route_name.dart';

class MainController with ChangeNotifier {
  int currentIndex = 0;

  void nextScreen(BuildContext context, int index) {
    currentIndex = index;
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
}
