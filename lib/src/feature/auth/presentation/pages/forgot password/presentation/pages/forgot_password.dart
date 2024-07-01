import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/routes/app_route_name.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/pages/forgot%20password/controller/forgot_password_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/widgets/custom_text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                    text: "Enter your email",
                    fontFamily: "Nunito",
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(height: 17.3.h),
              CustomTextField(
                controller: ForgotPasswordController.emailC,
                labelText: "Email",
                hintText: "youremail@gmail.com",
                keyBoardType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 101.93.h),
              CustomButtonWidget(
                onPressed: () {
                  context.go(
                    "${AppRouteName.login}/${AppRouteName.register}/${AppRouteName.forgotPassword}/${AppRouteName.forgotPasswordPinCode}",
                  );
                },
                text: "Send",
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
