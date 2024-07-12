import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/controller/auth_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/widgets/custom_text_field.dart';

class ForgotPasswordPinCode extends StatelessWidget {
  const ForgotPasswordPinCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              const CustomTextWidget(
                text: "Enter the password we have sent to your email",
                fontFamily: "Nunito",
                fontSize: 32,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 17.3.h),
              Consumer<AuthController>(
                builder: (context,authController,child) {
                  return CustomTextField(
                    controller: authController.sentCodeC,
                    labelText: "Password",
                    hintText: "******",
                    keyBoardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                  );
                }
              ),
              SizedBox(height: 101.93.h),
              CustomButtonWidget(
                onPressed: () {
                  Provider.of<AuthController>(context,listen: false).forgotPasswordVerifyEmail(context);
                },
                text: "Next",
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
