import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';

class CustomFoodWidget extends StatelessWidget {
  final SvgPicture? image;
  final String? title;
  final void Function()? onPressed;
  final double? height;
  final double? width;
  final Color? backColor;

  const CustomFoodWidget({
    super.key,
    this.image,
    this.title,
    this.onPressed,
    this.height,
    this.width,
    this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Card(
        color: backColor ?? AppColors.cFFF2F0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        child: SizedBox(
          height: height?.h ?? 64.h,
          width: width?.w ?? 64.w,
          child: Center(
            child: title == null
                ? image
                : Text(
                    title!,
                    style: const AppTextStyle().loginLabelMedium?.copyWith(
                          fontFamily: "Signika",
                          color: AppColors.cFF8473,
                        ),
                  ),
          ),
        ),
      ),
    );
  }
}
