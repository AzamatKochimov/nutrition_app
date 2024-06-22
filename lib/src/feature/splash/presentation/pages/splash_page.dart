import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../../../core/style/colors.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 310.h),
              const Text("Hello"),
            ],
          ),
        ),
      );
}
