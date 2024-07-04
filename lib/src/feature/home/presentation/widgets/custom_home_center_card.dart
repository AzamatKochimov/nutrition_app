import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';

import 'custom_home_button.dart';

class CustomHomeCenterCard extends StatelessWidget {
  const CustomHomeCenterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide.none,
      ),
      child: ListTile(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
        minTileHeight: 88.h,
        tileColor: AppColors.c9E9BC7,
        title: SizedBox(
          width: 138.w,
          child: Text(
            "Track Your\nWeekly Progress",
            style: const AppTextStyle()
                .titleLarge
                ?.copyWith(fontFamily: "Signika", fontSize: 18.h),
          ),
        ),
        trailing: CustomHomeButtonSmall(
          onPressed: () {},
          title: 'Wiew Now',
          buttonColor: AppColors.white,
          titleColor: AppColors.c9E9BC7,
          iconColor: AppColors.c9E9BC7,
          width: 98.w,
        ),
      ),
    );
  }
}
