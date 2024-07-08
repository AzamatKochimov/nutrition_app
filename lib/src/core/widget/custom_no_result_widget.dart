import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';

class CustomNoResultWidget extends StatelessWidget {
  final SvgPicture image;
  final String title;
  final String subTitle;
  final double? width;
  const CustomNoResultWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 204.h,
      width: width ?? 256.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          image,
          CustomTextWidget(
            text: title,
            color: AppColors.c696969,
          ),
          CustomTextWidget(
            text: subTitle,
            fontSize: 16,
            color: AppColors.cA9A9A9,
          ),
        ],
      ),
    );
  }
}
