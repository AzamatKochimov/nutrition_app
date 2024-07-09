import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/routes/app_route_name.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_rich_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/splash/controller/splash_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/splash/presentation/widgets/custom_onboarding_pageview.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 47.w),
        child: Column(
          children: [
            const Spacer(flex: 4),
            AppImages.kcalOnboarding,
            const Spacer(flex: 4),
            Consumer<SplashController>(builder: (context, ref, child) {
              return CustomOnboardingPageview(
                pageController: ref.pageController,
                onPageChanged: (index){
                  ref.onPageChanged(index);
                },
                title: ref.title,
                subTitle: ref.subTitle,
                currentIndex: ref.currentIndex,
              );
            }),
            const Spacer(flex: 2),
            Consumer<SplashController>(builder: (context, ref, child) {
              return CustomButtonWidget(
                onPressed: () {
                  ref.isFinal == true
                      ? context
                          .go("${AppRouteName.login}/${AppRouteName.register}")
                      : ref.pageController.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                        );
                },
                text: ref.isFinal == true? "Get Started":"Next",
              );
            }),
            const Spacer(flex: 1),
            CustomRichText(
              text: "Already Have An Acount?",
              textSize: 17,
              navigateText: "Log In",
              navigateTextSize: 17,
              onTap: () {
                context.go(AppRouteName.login);
              },
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
