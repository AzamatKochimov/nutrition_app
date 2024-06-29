import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final TextInputType keyBoardType;
  final TextInputAction textInputAction;
  final bool? obscureText;
  final IconButton? suffixIcon;
  final void Function()? onTap;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.keyBoardType,
    required this.textInputAction,
    this.obscureText,
    this.suffixIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return suffixIcon == null
        ? TextField(
            style: const AppTextStyle().headline10?.copyWith(
                  fontSize: 20,
                  color: AppColors.black,
                ),
            controller: controller,
            keyboardType: keyBoardType,
            obscureText: obscureText ?? false,
            textInputAction: textInputAction,
            decoration: InputDecoration(
              /// error: ,
              errorMaxLines: 2,
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0x00ff0000),
                ),
              ),
              labelStyle: const AppTextStyle().headline10?.copyWith(
                    fontFamily: "Signika",
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: AppColors.black,
                  ),
              floatingLabelStyle: const AppTextStyle().headline10?.copyWith(
                    fontSize: 30,
                    color: AppColors.c777777,
                  ),
              label: Text(labelText),
              hintText: hintText,
              hintStyle: const AppTextStyle().headline10?.copyWith(
                    fontFamily: "Signika",
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: AppColors.c777777,
                  ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppColors.black,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppColors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppColors.c91C788,
                  width: 1,
                ),
              ),
            ),
          )

        /// Icon qo'shilsa pasdigi ishlidi (Password)
        : TextField(
            style: const AppTextStyle().headline10?.copyWith(
                  fontSize: 20,
                  color: AppColors.black,
                ),
            controller: controller,
            // textDirection: TextDecoration.none, ///  =>  WHY IS THIS ERROR??????
            onTap: onTap,
            keyboardType: keyBoardType,
            obscureText: obscureText ?? false,
            textInputAction: textInputAction,
            decoration: InputDecoration(
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0x00ff0000),
                ),
              ),
              labelStyle: const AppTextStyle().headline10?.copyWith(
                fontFamily: "Signika",
                fontWeight: FontWeight.w200,
                fontSize: 20,
                color: AppColors.black,
              ),
              floatingLabelStyle: const AppTextStyle().headline10?.copyWith(
                    fontSize: 30,
                    color: AppColors.c777777,
                  ),
              label: Text(labelText),
              hintText: hintText,
              hintStyle: const AppTextStyle().headline10?.copyWith(
                    fontFamily: "Signika",
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: AppColors.c777777,
                  ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppColors.black,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppColors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppColors.c91C788,
                  width: 1,
                ),
              ),
              suffixIcon: suffixIcon,
            ),
          );
  }
}
