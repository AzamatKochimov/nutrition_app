import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
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
                alignment: Alignment.center,
              ),
              SizedBox(height: 25.h),
              Consumer<AuthController>(
                builder: (context,ref,child) {
                  return CustomTextField(
                    controller: ref.nameC,
                    labelText: "Name",
                    hintText: "eg. Abdulloh",
                    keyBoardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  );
                }
              ),
              SizedBox(height: 20.h),
              Consumer<AuthController>(
                builder: (context,ref,child) {
                  return CustomTextField(
                    controller: ref.emailC,
                    labelText: "Email",
                    hintText: "eg. example@gmail.com",
                    keyBoardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  );
                }
              ),
              SizedBox(height: 20.h),
              Consumer<AuthController>(
                builder: (context, authController, child) => CustomTextField(
                  controller: authController.passwordC,
                  labelText: "Password",
                  hintText: "******",
                  keyBoardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  suffixIcon: IconButton(
                    onPressed: () {
                      authController.registerVisibilityFunc();
                    },
                    icon: authController.registerVisibility
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                  onTap: () {
                    // value.visibleFunc();
                  },
                  obscureText: authController.registerVisibility,
                ),
              ),
              const Spacer(),
              Consumer<AuthController>(builder: (context, ref, child) {
                return CustomButtonWidget(
                  onPressed: () {
                    ref.nameC.clear();
                    ref.emailC.clear();
                    ref.passwordC.clear();
                    context.go(AppRouteName.home);
                  },
                  text: "Register",
                );
              }),
              const Spacer(),
              Consumer<AuthController>(
                builder: (context, ref, child) => CustomRichText(
                  text: "Already have an account?",
                  textSize: 20,
                  navigateText: "Log In",
                  navigateTextSize: 20,
                  onTap: () {
                    ref.nameC.clear();
                    ref.emailC.clear();
                    ref.passwordC.clear();
                    ref.refresh(doYouWantToRefreshLoginOrRegister: "l");
                    context.pop();
                  },
                ),
              ),
              SizedBox(height: 53.h),
            ],
          ),
        ),
      ),
    );
  }
}
