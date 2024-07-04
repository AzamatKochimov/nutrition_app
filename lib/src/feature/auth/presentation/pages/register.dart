import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_rich_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/controller/auth_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/widgets/custom_text_field.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/widget/custom_text_widget.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 34.h),
              AppImages.authTopImage,
              SizedBox(height: 16.h),
              const CustomTextWidget(
                text: "Please register here!",
                fontSize: 32,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 25.h),
              CustomTextField(
                controller: AuthController.nameC,
                labelText: "Name",
                hintText: "eg. Abdulloh",
                keyBoardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: AuthController.emailC,
                labelText: "Email",
                hintText: "eg. example@gmail.com",
                keyBoardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: AuthController.passwordC,
                labelText: "Password",
                hintText: "******",
                keyBoardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                suffixIcon: IconButton(
                  onPressed: () {
                    /// Missed side
                  },
                  icon: const Icon(Icons.visibility),
                ),
                onTap: () {},
                obscureText: true,
              ),
              const Spacer(),
              CustomButtonWidget(
                onPressed: () {
                  /// Not working correctly
                  context.go(AppRouteName.home);
                },
                text: "Register",
              ),
              const Spacer(),
              CustomRichText(
                text: "Already have an account?",
                textSize: 20,
                navigateText: "Log In",
                navigateTextSize: 20,
                onTap: () {
                  context.pop();
                },
              ),
              SizedBox(height: 53.h),
            ],
          ),
        ),
      ),
    );
  }
}
