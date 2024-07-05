import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/colors.dart';
import '../style/text_style.dart';

class CustomRichText extends StatelessWidget {
  final String text;
  final double? textSize;
  final FontWeight? textFontWeight;
  final String navigateText;
  final double? navigateTextSize;
  final FontWeight? navigateTextFontWeight;
  final void Function()? onTap;

  const CustomRichText({
    super.key,
    required this.text,
    this.textSize,
    required this.navigateText,
    this.navigateTextSize,
    this.onTap, 
    this.textFontWeight, 
    this.navigateTextFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "$text ",
        style: const AppTextStyle().headline10?.copyWith(
            fontFamily: "Signika",
            fontWeight: textFontWeight?? FontWeight.w600,
            fontSize: textSize?.h,
            color: const Color.fromRGBO(0, 0, 0, 0.45)),
        children: [
          TextSpan(
            text: navigateText,
            style: const AppTextStyle().displayMedium?.copyWith(
                  fontFamily: "Signika",
                  fontWeight: navigateTextFontWeight ?? FontWeight.w700,
                  fontSize: navigateTextSize?.h,
                  color: AppColors.c91C788,
                ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
