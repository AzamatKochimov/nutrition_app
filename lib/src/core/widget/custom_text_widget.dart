import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/colors.dart';
import '../style/text_style.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final AlignmentGeometry? alignment;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const CustomTextWidget({
    super.key,
    required this.text,
    this.fontFamily,
    this.alignment, 
    this.fontSize, 
    this.fontWeight, 
    this.color, 
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        " $text",
        textAlign: textAlign ?? TextAlign.center,
        style: const AppTextStyle().headline10?.copyWith(
              fontFamily: fontFamily ?? "Signika",
              fontWeight: fontWeight ?? FontWeight.w400,
              fontSize: fontSize?.h ?? 22,
              color: color ?? AppColors.black,
            ),
      ),
    );
  }
}
