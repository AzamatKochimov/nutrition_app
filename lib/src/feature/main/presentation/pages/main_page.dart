import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/controller/main_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/widgets/custom_bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  final Widget child;
  const MainPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: child,
      bottomNavigationBar: Consumer<MainController>(
        builder: (context,ref,child) {
          return CustomBottomNavigationBar(
            currentIndex: ref.currentIndex,
            onTap: (index){
              ref.nextScreen(context,index);
            },
          );
        }
      ),
    );
  }
}
