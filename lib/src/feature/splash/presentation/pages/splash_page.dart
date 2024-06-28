import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart";
import "../../../../core/style/colors.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: AppColors.c91C788,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 380.43.h),
              AppImages.kcal,
              const Spacer(),
              Text(
                "ZUAMICA",
                style: const AppTextStyle().displayMedium?.copyWith(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w800,
                  fontSize: 25.sp,
                  color: AppColors.cCFE7CB,
                ),
              ),
              SizedBox(height: 95.h)
            ],
          ),
        ),
      );
}
