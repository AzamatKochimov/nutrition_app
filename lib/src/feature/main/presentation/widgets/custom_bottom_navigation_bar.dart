import 'package:flutter/material.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedFontSize: 20,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: AppImages.homeUnselectedIcon,
          activeIcon: AppImages.homeSelectedIcon,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: AppImages.searchUnselectedIcon,
          activeIcon: AppImages.searchSelectedIcon,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: AppImages.scanIcon,
          activeIcon: AppImages.scanIcon,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: AppImages.heartUnselectedIcon,
          activeIcon: AppImages.heartSelectedIcon,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: AppImages.profileUnselectedIcon,
          activeIcon: AppImages.profileSelectedIcon,
          label: "",
        ),
      ],
      backgroundColor: AppColors.white,
    );
  }
}