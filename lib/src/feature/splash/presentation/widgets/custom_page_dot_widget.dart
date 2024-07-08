import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/style/colors.dart';

class CustomPageDotWidget extends StatelessWidget {
  final int currentIndex;
  final int index;

  const CustomPageDotWidget({super.key, required this.currentIndex, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: currentIndex == index ? 10.0.h : 8.0.h,
      width: currentIndex == index ? 20.0.w : 12.0.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: currentIndex == index ? AppColors.cFF806E : AppColors.cFFC0B8,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}