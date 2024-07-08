import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';

class CustomFavoriteTapbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabTapped;

  const CustomFavoriteTapbar({
    super.key,
    required this.selectedIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: MaterialButton(
            height: 48.h,
            onPressed: () {
              onTabTapped(0);
            },
            color: selectedIndex == 0
                    ? AppColors.cFF9385
                    : AppColors.cFFF8EE,
            shape: const OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(16)),
              borderSide: BorderSide.none,
            ),
            child: CustomTextWidget(
              text: "Food",
              fontSize: 20,
              color: selectedIndex == 0
                  ? AppColors.cFFF8EE
                  : AppColors.cFF9385,
            ),
          ),
        ),
        Expanded(
          child: MaterialButton(
            height: 48.h,
            onPressed: () {
              onTabTapped(1);
            },
            color: selectedIndex == 1
                    ? AppColors.cFF9385
                    : AppColors.cFFF8EE,
            shape: const OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(16)),
              borderSide: BorderSide.none,
            ),
            child: CustomTextWidget(
              text: "Recipes",
              fontSize: 20,
              color: selectedIndex == 1
                  ? AppColors.cFFF8EE
                  : AppColors.cFF9385,
            ),
          ),
        ),
      ],
    );
  }
}
