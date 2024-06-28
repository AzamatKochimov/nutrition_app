import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/colors.dart';
import '../style/text_style.dart';

class CustomRichText extends StatelessWidget {
  final String text;
  final String navigateText;
  final void Function()? onTap;

  const CustomRichText(
      {super.key, required this.text, required this.navigateText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "$text ",
        style: const AppTextStyle().headline10?.copyWith(
            fontFamily: "Signika",
            fontSize: 17.h,
            color: const Color.fromRGBO(0, 0, 0, 0.45)),
        children: [
          TextSpan(
            text: navigateText,
            style: const AppTextStyle().displayMedium?.copyWith(
                  fontFamily: "Signika",
                  fontSize: 17.h,
                  color: AppColors.c91C788,
                ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
