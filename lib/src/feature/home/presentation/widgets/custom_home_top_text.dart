import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';

class CustomHomeTopText extends StatelessWidget {
  final String title;
  final String subTitle;
  final double? titleSize;
  final double? subTitleSize;
  final Color? titleColor;
  final Color? subTitleColor;
  final FontWeight? titleFontWeight;
  final FontWeight? subTitleFontWeight;
  final CrossAxisAlignment? crossAxisAlignment;

  const CustomHomeTopText({
    super.key,
    required this.title,
    required this.subTitle, 
    this.titleSize, 
    this.titleColor, 
    this.subTitleSize, 
    this.subTitleColor, 
    this.titleFontWeight, 
    this.subTitleFontWeight, this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const AppTextStyle().titleLarge?.copyWith(
                fontFamily: "Signika",
                fontWeight: titleFontWeight ?? FontWeight.w600,
                fontSize: titleSize?.h ?? 25.h,
                color: titleColor ?? AppColors.c91C788,
              ),
        ),
        Text(
          subTitle,
          style: const AppTextStyle().displayLarge?.copyWith(
                fontFamily: "Signika",
                fontWeight: subTitleFontWeight ?? FontWeight.w400,
                fontSize: subTitleSize?.h ?? 18.h,
                color: subTitleColor ?? AppColors.c7B7B7B,
              ),
        ),
      ],
    );
  }
}
