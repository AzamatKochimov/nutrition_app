import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../../../../core/widget/splash_button_widget.dart';
import '../../../../core/widget/splash_rich_text_widget.dart';

class OnboardingWidget extends StatelessWidget {
  final SvgPicture onboardingImage;
  final PageController pageController;
  final String title;
  final String subTitle;
  final String buttonText;
  final int currentIndex;
  final bool? isFinal;

  const OnboardingWidget({
    super.key,
    required this.onboardingImage,
    required this.pageController,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    required this.currentIndex,
    this.isFinal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 43.w),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 88.h),
            AppImages.kcalOnboarding,
            SizedBox(height: 65.h),
            onboardingImage,
            SizedBox(height: 23.h),
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
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 105.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PageDot(currentIndex: currentIndex, index: 0),
                  PageDot(currentIndex: currentIndex, index: 1),
                  PageDot(currentIndex: currentIndex, index: 2),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            SplashButtonWidget(
              onPressed: () {
                isFinal != null && isFinal == true
                    ? context.go("${AppRouteName.login}/${AppRouteName.register}")
                    : pageController.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      );
              },
              text: buttonText,
            ),
            SizedBox(height: 16.h),
            CustomRichText(
              text: "Already Have An Acount?",
              navigateText: "Log In",
              onTap: () {
                context.go(AppRouteName.login);
              },
            ),
            SizedBox(height: 64.h),
          ],
        ),
      ),
    );
  }
}

class PageDot extends StatelessWidget {
  final int currentIndex;
  final int index;

  const PageDot({super.key, required this.currentIndex, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: currentIndex == index ? 10.0 : 8.0,
      width: currentIndex == index ? 20.0 : 12.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: currentIndex == index ? AppColors.cFF806E : AppColors.cFFC0B8,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
