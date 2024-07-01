import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/colors.dart';
import '../style/text_style.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final String fontFamily;
  final TextAlign textAlign;

  const CustomTextWidget({
    super.key,
    required this.text,
    required this.fontFamily,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: const AppTextStyle().headline10?.copyWith(
            fontFamily: fontFamily,
            fontSize: 32.w,
            color: AppColors.black,
          ),
    );
  }
}
