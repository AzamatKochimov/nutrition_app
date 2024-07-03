import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';

class CustomScanIngredients extends StatelessWidget {
  final SvgPicture? image;
  final String? title;
  const CustomScanIngredients({
    super.key, 
    this.image, 
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cFFF2F0,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none
      ),
      child: SizedBox(
        height: 64.h,
        width: 64.w,
        child: Center(
          child: title == null ? image : 
          Text(
            title!,
            style: const AppTextStyle().loginLabelMedium?.copyWith(
              fontFamily: "Signika",
              color: AppColors.cFF8473
            ),
          ),
        ),
      ),
    );
  }

}