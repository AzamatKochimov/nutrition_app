import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
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
          icon: CircleAvatar(
            radius: 24.h,
            backgroundColor: AppColors.c91C788,
            child: AppImages.scanIcon,
          ),
          activeIcon: CircleAvatar(
            radius: 24.h,
            backgroundColor: AppColors.c91C788,
            child: AppImages.scanIcon,
          ),
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