import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/splash/presentation/widgets/custom_page_dot_widget.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../../../../core/widget/custom_button_widget.dart';
import '../../../../core/widget/custom_rich_text_widget.dart';

class CustomOnboardingWidget extends StatelessWidget {
  final SvgPicture onboardingImage;
  final PageController pageController;
  final String title;
  final String subTitle;
  final String buttonText;
  final int currentIndex;
  final bool? isFinal;

  const CustomOnboardingWidget({
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
                  CustomPageDotWidget(currentIndex: currentIndex, index: 0),
                  CustomPageDotWidget(currentIndex: currentIndex, index: 1),
                  CustomPageDotWidget(currentIndex: currentIndex, index: 2),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            CustomButtonWidget(
              onPressed: () {
                isFinal != null && isFinal == true
                    ? context
                        .go("${AppRouteName.login}/${AppRouteName.register}")
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
              textSize: 17,
              navigateText: "Log In",
              navigateTextSize: 17,
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
