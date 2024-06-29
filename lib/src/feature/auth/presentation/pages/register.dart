import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_rich_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/widgets/custom_text_field.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameC = TextEditingController();
  TextEditingController lastNameC = TextEditingController();
  TextEditingController ageC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameC.dispose();
    lastNameC.dispose();
    ageC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 34.88.h),
              AppImages.authTopImage,
              SizedBox(height: 15.09.h),
              Text(
                "Register here!",
                textAlign: TextAlign.center,
                style: const AppTextStyle().displayLarge?.copyWith(
                      fontFamily: "Signika",
                      fontWeight: FontWeight.w400,
                      fontSize: 32.09.h,
                      color: AppColors.black,
                    ),
              ),
              CustomTextField(
                controller: nameC,
                labelText: "Name",
                hintText: "Name",
                keyBoardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot password?",
                    style: const AppTextStyle().headline10?.copyWith(
                          fontFamily: "Signika",
                          fontWeight: FontWeight.w600,
                          fontSize: 17.12.h,
                          color: AppColors.c91C788,
                        ),
                  )
                ],
              ),
              CustomButtonWidget(
                onPressed: () {},
                text: "Register",
              ),
              const CustomRichText(
                text: "Already have an account?",
                textSize: 20,
                navigateText: "Log In",
                navigateTextSize: 20,
              ),
              SizedBox(height: 53.h),
            ],
          ),
        ),
      ),
    );
  }
}
