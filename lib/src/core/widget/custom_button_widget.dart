import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';

import '../style/colors.dart';

class CustomButtonWidget extends StatelessWidget{

  final void Function()? onPressed;
  final String text;

  const CustomButtonWidget({super.key, required this.onPressed, required this.text});


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColors.c91C788,
      minWidth: double.infinity,
      height: 72.h,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Center(
        child: Text(
          text,
          style: const AppTextStyle().displayMedium?.copyWith(
            fontFamily: "Signika",
            fontWeight: FontWeight.w600,
            fontSize: 25.h,
          ),
        ),
      ),
    );
  }
}