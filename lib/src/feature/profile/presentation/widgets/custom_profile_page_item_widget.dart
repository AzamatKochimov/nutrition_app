import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class ProfilePageItemWidget extends StatelessWidget {
  final SvgPicture image;
  final String text;
  final void Function() onPressed;

  const ProfilePageItemWidget({
    super.key,
    required this.image,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h, bottom: 8.h),
      child: SizedBox(
        height: 48.h,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 48.h,
              width: 48.w,
              decoration: BoxDecoration(
                color: AppColors.cFFF8EE,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: image,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                text,
                style: const AppTextStyle().headline10?.copyWith(
                      fontFamily: "Signika",
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                      color: AppColors.c707070,
                    ),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: onPressed,
              // icon: AppImages.profilePageToRightIcon,
              icon: const Icon(Icons.chevron_right_rounded,color: AppColors.c909090,),
            ),
          ],
        ),
      ),
    );
  }
}
