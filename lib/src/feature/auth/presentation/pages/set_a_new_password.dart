import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/controller/auth_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/presentation/widgets/custom_text_field.dart';

class SetANewPassword extends StatelessWidget {
  const SetANewPassword({super.key});

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
                    text: "Set a new password!",
                    fontFamily: "Nunito",
                    fontSize: 32,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              SizedBox(height: 17.3.h),
              Consumer<AuthController>(builder: (context, ref, child) {
                return CustomTextField(
                  controller: ref.passwordC,
                  labelText: "New Password",
                  hintText: "******",
                  keyBoardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                );
              }),
              SizedBox(height: 20.h),
              Consumer<AuthController>(
                builder: (context, ref, child) {
                  return CustomTextField(
                    controller: ref.confirmNewPassC,
                    labelText: "Confirm New Password",
                    hintText: "******",
                    keyBoardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                  );
                },
              ),
              SizedBox(height: 101.93.h),
              CustomButtonWidget(
                onPressed: () {
                  Provider.of<AuthController>(context,listen: false).postForgotPasswordNewPassword(context);
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
