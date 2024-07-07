import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';

class CustomRecipeWidget extends StatelessWidget {
  final SvgPicture image;
  final int kcal;
  final String title;
  final String subTitle;
  final IconButton iconButton;

  const CustomRecipeWidget({
    super.key,
    required this.image,
    required this.kcal,
    required this.title,
    required this.subTitle,
    required this.iconButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: double.infinity,
      padding: EdgeInsets.all(28.h),
      margin: EdgeInsets.only(top: 16.h),
      decoration: const BoxDecoration(
        color: AppColors.cEFF7EE,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          image,
          SizedBox(width: 20.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: "$kcal Kcal",
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: AppColors.c6CB663,
              ),
              CustomTextWidget(
                text: title,
                fontSize: 16,
                color: AppColors.c2E2E2E,
              ),
              CustomTextWidget(
                text: subTitle,
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: AppColors.c767676,
              ),
            ],
          ),
          const Spacer(),
          iconButton,
        ],
      ),
    );
  }
}
