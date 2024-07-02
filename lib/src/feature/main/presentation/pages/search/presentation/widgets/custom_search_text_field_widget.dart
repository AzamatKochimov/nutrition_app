import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';

class CustomSearchTextFieldWidget extends StatelessWidget {
  final void Function()? onTap;
  final Color? prefixIconColor;
  final String hintText;
  final Color? hintextColor;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  const CustomSearchTextFieldWidget({
    super.key,
    this.onTap,
    this.prefixIconColor,
    this.hintextColor,
    this.suffixIcon, 
    required this.hintText, 
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: keyboardType!=null?true: false,
      cursorColor: AppColors.c999999,
      keyboardType: keyboardType ?? TextInputType.none,
      style: const TextStyle(color: AppColors.c666666),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
        fillColor: AppColors.cF4F4F4,
        filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: AppImages.searchTextFieldIcon,
        ),
        prefixIconColor: prefixIconColor ?? AppColors.c999999,
        prefixIconConstraints: BoxConstraints(maxHeight: 16.h),
        hintText: hintText,
        hintStyle: const AppTextStyle().headline10?.copyWith(
              fontFamily: "Signika",
              color: hintextColor ?? AppColors.c999999,
            ),
        suffixIcon: suffixIcon,
      ),
      onTap: onTap,
    );
  }
}
