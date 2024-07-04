import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';

import 'custom_home_button.dart';
import 'custom_home_top_text.dart';

class CustomHomeCenterTopCard extends StatelessWidget {
  const CustomHomeCenterTopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32),
        ),
        borderSide: BorderSide.none
      ),
      color: AppColors.cFFF2F0,
      child: Container(
        height: 169.h,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 125.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CustomHomeTopText(
                    title: "ARTICLE", 
                    subTitle: "The pros and cons of fast food.",
                    titleColor: AppColors.cFF806E,
                    subTitleColor: AppColors.c330600,
                    titleSize: 10,
                    subTitleSize: 17,
                    subTitleFontWeight: FontWeight.w600,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  CustomHomeButtonSmall(
                    onPressed: (){}, 
                    title: 'Read Now',
                  ),
                ],
              ),
            ),
            AppImages.homeTopImage,
          ],
        ),
      ),
    );
  }
}