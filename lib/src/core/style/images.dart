import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";

@immutable
sealed class AppImages {
  const AppImages._();

  ///  SVG
  static final SvgPicture categoryArrowBackIcon = SvgPicture.asset(
    "assets/icons/ic_arrow_back.svg",
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );



  /// PNG
  ///



  static final Image panPersonalData = Image.asset(
    "assets/images/personal_data_pan.png",
    height: 28.h,
    width: 28.w,
    fit: BoxFit.fitHeight,
  );
}

extension Extension on Image {
  Image copyWith({
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) =>
      Image(
        image: image,
        width: width ?? this.width,
        height: height ?? this.height,
        fit: fit ?? this.fit,
        color: color ?? this.color,
      );
}
