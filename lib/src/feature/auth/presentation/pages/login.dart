import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/routes/app_route_name.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_rich_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/controller/auth_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/widgets/custom_text_field.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      // resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              const Spacer(),
              AppImages.authTopImage,
              const Spacer(),
              Text(
                "Log In",
                textAlign: TextAlign.center,
                style: const AppTextStyle().displayLarge?.copyWith(
                  fontFamily: "Signika",
                  fontWeight: FontWeight.w400,
                  fontSize: 32.09.h,
                  color: AppColors.black,
                ),
              ),
              const Spacer(),
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
                  onPressed: () {},
                  icon: const Icon(Icons.visibility),
                ),
                onTap: (){

                },
                obscureText: true,
              ),
              SizedBox(height: 5.h),
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
                  ),
                ],
              ),
              const Spacer(flex: 2),
              CustomButtonWidget(
                onPressed: () {

                },
                text: "Log In",
              ),
              const Spacer(flex: 1),
              CustomRichText(
                text: "Don't have an account?",
                textSize: 18,
                navigateText: "Create an account",
                navigateTextSize: 19,
                onTap: (){
                  context.go("${AppRouteName.login}/${AppRouteName.register}");
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
