import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';

class CustomSearchVegetableWidget extends StatelessWidget {
  final String title;
  final String? subTitle;
  const CustomSearchVegetableWidget({
    super.key, 
    required this.title, 
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      child: Column(
        children: [
          Container(
            height: 159.h,
            width: 200.w,
            decoration: const BoxDecoration(
              color: AppColors.cFFF2F0,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16))
            ),
          ),
          SizedBox(
            height: 72.h,
            width: 200.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: " $title",
                  fontSize: 14.h,
                ),
                CustomTextWidget(
                  text: " ${subTitle??""}",
                  fontWeight: FontWeight.w300,
                  fontSize: 12.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}