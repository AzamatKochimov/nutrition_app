import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/controller/auth_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/widgets/custom_text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
              const Row(
                children: [
                  CustomTextWidget(
                    text: "Enter your email",
                    fontFamily: "Nunito",
                    fontSize: 32,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              SizedBox(height: 17.3.h),
              Consumer<AuthController>(
                builder: (context,authController,child) {
                  return CustomTextField(
                    controller: authController.emailC,
                    labelText: "Email",
                    hintText: "youremail@gmail.com",
                    keyBoardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                  );
                }
              ),
              SizedBox(height: 101.93.h),
              CustomButtonWidget(
                onPressed: () {
                  Provider.of<AuthController>(context,listen: false).forgotPassword(context);
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
