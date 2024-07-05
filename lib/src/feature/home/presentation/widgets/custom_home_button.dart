import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';

class CustomHomeButtonSmall extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final Color? buttonColor;
  final Color? iconColor;
  final Color? titleColor;
  final double? width;

  const CustomHomeButtonSmall({
    super.key, 
    required this.onPressed, 
    required this.title, 
    this.buttonColor, 
    this.iconColor, 
    this.titleColor, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      width: width?? 104.w,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        color: buttonColor ?? AppColors.cFF8473,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const AppTextStyle().titleLarge?.copyWith(
                fontFamily: "Signika",
                fontSize: 12.w,
                color: titleColor ?? AppColors.white,
              ),
            ),
            Icon(Icons.arrow_right,color: iconColor ?? AppColors.white,),
          ],
        ),
      ),
    );
  }
}