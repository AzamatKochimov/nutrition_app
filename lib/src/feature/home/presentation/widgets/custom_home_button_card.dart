import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';

class CustomHomeBottomButtonCard extends StatelessWidget {
  final String title;
  final SvgPicture image;
  const CustomHomeBottomButtonCard({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cFFF2F0,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32),
        borderSide: BorderSide.none
      ),
      child: SizedBox(
        height: 144.h,
        width: 132.w,
        child: Center(
          child: SizedBox(
            height: 80.h,
            width: 80.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                image,
                Text(
                  title,
                  style: const AppTextStyle().headline10?.copyWith(
                        fontFamily: "Signika",
                        fontSize: 17.h,
                        color: AppColors.c4D0A00,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
