import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/text_style.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final AlignmentGeometry? alignment;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const CustomTextWidget({
    super.key,
    required this.text,
    this.fontFamily,
    this.alignment, 
    this.fontSize, 
    this.fontWeight, 
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        " $text",
        style: const AppTextStyle().headline10?.copyWith(
              fontFamily: fontFamily ?? "Signika",
              fontWeight: fontWeight ?? FontWeight.w400,
              fontSize: fontSize ?? 22,
              color: color ?? AppColors.black,
            ),
      ),
    );
  }
}
