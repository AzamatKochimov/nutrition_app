import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';

class CustomTextResultFood extends StatelessWidget {
  final String title;
  final String? subTitle;
  const CustomTextResultFood({
    super.key, 
    required this.title, 
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const AppTextStyle().headline10?.copyWith(
            fontFamily: "Signika",
            fontSize: 16.h,
            color: AppColors.cFF8473,
          ),
        ),
        Text(
          "$subTitle",
          style: const AppTextStyle().headline10?.copyWith(
            fontFamily: "Signika",
            fontSize: 24.h,
            color: AppColors.cFF8473,
          ),
        ),
      ],
    );
  }
}