import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/splash/presentation/widgets/custom_page_dot_widget.dart';

import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';

class CustomOnboardingPageview extends StatelessWidget {
  final PageController pageController;
  final void Function(int) onPageChanged;
  final String title;
  final String subTitle;
  final int currentIndex;
  final bool? isFinal;

  const CustomOnboardingPageview({
    super.key,
    required this.pageController,
    required this.onPageChanged,
    required this.title,
    required this.subTitle,
    required this.currentIndex,
    this.isFinal,  
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 282.h,
            width: double.infinity,
            child: PageView(
              controller: pageController,
              onPageChanged: onPageChanged,
              children: [
                AppImages.firstOnboardingImage,
                AppImages.secondOnboardingImage,
                AppImages.thirdOnboardingImage,
              ],
            ),
          ),
          SizedBox(height: 45.h),
          Text(
            title,
            style: const AppTextStyle().displayLarge?.copyWith(
                  fontFamily: "Signika",
                  fontWeight: FontWeight.w600,
                  fontSize: 25.h,
                  color: const Color.fromRGBO(0, 0, 0, 0.85),
                ),
          ),
          SizedBox(height: 6.h),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: const AppTextStyle().displayLarge?.copyWith(
                  fontFamily: "Signika",
                  fontWeight: FontWeight.w400,
                  fontSize: 17.h,
                  color: const Color.fromRGBO(0, 0, 0, 0.45),
                ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 10.h,
            width: 52.w,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPageDotWidget(currentIndex: currentIndex, index: 0),
                  CustomPageDotWidget(currentIndex: currentIndex, index: 1),
                  CustomPageDotWidget(currentIndex: currentIndex, index: 2),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
