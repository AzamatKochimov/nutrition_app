import 'package:flutter/material.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/splash/presentation/widgets/custom_onboarding_widget.dart';

class Onboarding extends StatefulWidget {

  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: PageView(
        controller: pageController,
        children: [
          CustomOnboardingWidget(
            onboardingImage: AppImages.firstOnboardingImage,
            pageController: pageController,
            title: "Eat Healthy",
            subTitle: "Maintaining good health should be the primary focus of everyone.",
            buttonText: "Next",
            currentIndex: 0,
          ),
          CustomOnboardingWidget(
            onboardingImage: AppImages.secondOnboardingImage,
            pageController: pageController,
            title: "Healthy Recipes",
            subTitle: "Browse thousands of healthy recipes from all over the world.",
            buttonText: "Next",
            currentIndex: 1,
          ),
          CustomOnboardingWidget(
            onboardingImage: AppImages.thirdOnboardingImage,
            pageController: pageController,
            title: "Track Your Health",
            subTitle: "With amazing inbuilt tools you can track your progress.",
            buttonText: "Get Started",
            currentIndex: 2,
            isFinal: true,
          ),
        ],
      ),
    );
  }
}
