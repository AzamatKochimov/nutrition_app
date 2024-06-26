import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/routes/app_route_name.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/pages/forgot%20password/controller/forgot_password_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/widgets/custom_text_field.dart';

class SetANewPassword extends StatelessWidget {
  const SetANewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              const Row(
                children: [
                  CustomTextWidget(
                    text: "Set a new password!",
                    fontFamily: "Nunito",
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(height: 17.3.h),
              CustomTextField(
                controller: ForgotPasswordController.newPassC,
                labelText: "New Password",
                hintText: "****",
                keyBoardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                controller: ForgotPasswordController.confirmNewPassC,
                labelText: "Confirm New Password",
                hintText: "****",
                keyBoardType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 101.93.h),
              CustomButtonWidget(
                onPressed: () {
                  context.go(AppRouteName.login);
                },
                text: "Done",
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
