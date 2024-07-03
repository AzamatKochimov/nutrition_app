import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/scan%20food/presentation/widgets/custom_scan_food_result.dart';

class CustomScanFoodBottomNavigationBar extends StatelessWidget {
  const CustomScanFoodBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 168.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(32),),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppImages.mealsImage,
            MaterialButton(
              onPressed: (){
                showCupertinoModalPopup(
                  context: context, 
                  builder: (context){
                  return const CustomScanFoodResult();
                });
              },
              height: 72.h,
              minWidth: 72.w,
              color: AppColors.cFFC0B8,
              shape: const CircleBorder(),
              child: Container(
              height: 40.h,
              width: 40.w,
              decoration: const BoxDecoration(
                color: AppColors.cFF8473,
                shape: BoxShape.circle,
              ),
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: AppImages.refreshImage,
              iconSize: double.infinity,
            ),
          ],
        ),
      );
  }
}