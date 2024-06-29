import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";

@immutable
sealed class AppImages {
  const AppImages._();

  ///  SVG
  // static final SvgPicture categoryArrowBackIcon = SvgPicture.asset(
  //   "assets/icons/ic_arrow_back.svg",
  //   height: 24.h,
  //   width: 24.w,
  //   fit: BoxFit.cover,
  // );

  static final SvgPicture kcal = SvgPicture.asset(
    "assets/images/kcal.svg",
    height: 48.11.h,
    width: 116.83.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture kcalOnboarding = SvgPicture.asset(
    "assets/images/kcal_onboarding.svg",
    height: 24.h,
    width: 58.29.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture firstOnboardingImage = SvgPicture.asset(
    "assets/images/onboarding_1_img.svg",
    height: 282.h,
    width: 281.1.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture secondOnboardingImage = SvgPicture.asset(
    "assets/images/onboarding_2_img.svg",
    height: 282.h,
    width: 282.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture thirdOnboardingImage = SvgPicture.asset(
    "assets/images/onboarding_3_img.svg",
    height: 282.h,
    width: 282.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture authTopImage = SvgPicture.asset(
    "assets/images/auth_top_img.svg",
    height: 146.7.h,
    width: 160.53.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture homeTopImage = SvgPicture.asset(
    "assets/images/home_top_img.svg",
    height: 120.73.h,
    width: 111.43.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture homeStrawberryImage = SvgPicture.asset(
    "assets/images/home_strawberry_img.svg",
    height: 48.h,
    width: 31.36.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture homeCabbageImage = SvgPicture.asset(
    "assets/images/home_cabbage_img.svg",
    height: 48.h,
    width: 50.07.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture noResultFoundImage = SvgPicture.asset(
    "assets/images/no_result_found_img.svg",
    height: 96.h,
    width: 107.93.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture refreshImage = SvgPicture.asset(
    "assets/images/refresh_img.svg",
    height: 27.98.h,
    width: 27.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture hamburgerBigImage = SvgPicture.asset(
    "assets/images/hamburger_big_img.svg",
    height: 140.h,
    width: 140.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture hamburgerSmallImage = SvgPicture.asset(
    "assets/images/hamburger_small_img.svg",
    height: 64.h,
    width: 64.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture breadImage = SvgPicture.asset(
    "assets/images/bread_img.svg",
    height: 27.24.h,
    width: 40.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture tomatoImage = SvgPicture.asset(
    "assets/images/tomato_img.svg",
    height: 40.h,
    width: 40.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture saladImage = SvgPicture.asset(
    "assets/images/salad_img.svg",
    height: 40.h,
    width: 40.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture cakeImage = SvgPicture.asset(
    "assets/images/cake_img.svg",
    height: 64.h,
    width: 63.32.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture pizzaImage = SvgPicture.asset(
    "assets/images/pizza_img.svg",
    height: 64.h,
    width: 64.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture candyImage = SvgPicture.asset(
    "assets/images/candy_img.svg",
    height: 64.h,
    width: 64.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture hotdogImage = SvgPicture.asset(
    "assets/images/hotdog_img.svg",
    height: 64.h,
    width: 56.07.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture noFoodAndRecipeFoundImage = SvgPicture.asset(
    "assets/images/no_food_and_recipe_found_img.svg",
    height: 96.h,
    width: 96.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture editProfileIcon = SvgPicture.asset(
    "assets/images/edit_profile_icon.svg",
    height: 23.33.h,
    width: 18.67.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture renewPlansIcon = SvgPicture.asset(
    "assets/images/renew_plans_icon.svg",
    height: 22.17.h,
    width: 23.34.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture settingsIcon = SvgPicture.asset(
    "assets/images/settings_icon.svg",
    height: 23.33.h,
    width: 22.17.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture termsAndPrivacyPolicyIcon = SvgPicture.asset(
    "assets/images/terms_and_privacy_policy_icon.svg",
    height: 19.83.h,
    width: 22.17.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture logOutIcon = SvgPicture.asset(
    "assets/images/log_out_icon.svg",
    height: 23.33.h,
    width: 24.24.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture homeSelectedIcon = SvgPicture.asset(
    "assets/images/heart_icon_selected.svg",
    height: 30.h,
    width: 28.5.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture homeUnselectedIcon = SvgPicture.asset(
    "assets/images/heart_icon_unselected.svg",
    height: 26.67.h,
    width: 25.33.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture searchSelectedIcon = SvgPicture.asset(
    "assets/images/search_icon_selected.svg",
    height: 30.h,
    width: 30.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture searchUnselectedIcon = SvgPicture.asset(
    "assets/images/search_icon_unselected.svg",
    height: 25.63.h,
    width: 25.02.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture scanIcon = SvgPicture.asset(
    "assets/images/scan_icon.svg",
    height: 18.h,
    width: 22.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture cameraIcon = SvgPicture.asset(
    "assets/images/camera_icon.svg",
    height: 18.h,
    width: 20.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture heartSelectedIcon = SvgPicture.asset(
    "assets/images/heart_icon_selected.svg",
    height: 28.5.h,
    width: 30.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture heartUnselectedIcon = SvgPicture.asset(
    "assets/images/heart_icon_unselected.svg",
    height: 24.h,
    width: 25.33.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture profileSelectedIcon = SvgPicture.asset(
    "assets/images/profile_icon_selected.svg",
    height: 26.67.h,
    width: 21.33.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture profileUnselectedIcon = SvgPicture.asset(
    "assets/images/profile_icon_unselected.svg",
    height: 24.54.h,
    width: 19.12.w,
    fit: BoxFit.cover,
  );


  /// PNG
  ///

  // static final Image panPersonalData = Image.asset(
  //   "assets/images/personal_data_pan.png",
  //   height: 28.h,
  //   width: 28.w,
  //   fit: BoxFit.fitHeight,
  // );

  static final Image mealsImage = Image.asset(
    "assets/images/meals_img.png",
    height: 40.h,
    width: 40.w,
    fit: BoxFit.cover,
  );
}

extension Extension on Image {
  Image copyWith({
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) =>
      Image(
        image: image,
        width: width ?? this.width,
        height: height ?? this.height,
        fit: fit ?? this.fit,
        color: color ?? this.color,
      );
}
