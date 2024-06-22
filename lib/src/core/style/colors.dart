import "dart:ui";
import "package:flutter/foundation.dart";

@immutable
sealed class AppColors {

  //main colors
  static const Color transparent = Color(0x00000000);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xFF000000);
  //every colors



  // gradients
  static const List<Color> homeMainScrollItems = <Color>[white, black];
}
