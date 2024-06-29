import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart";

sealed class Utils {
  // FireSnackBar
  static void fireSnackBar({
    required String message,
    required BuildContext context,
    required Color backgroundColor,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Text(
          message,
          style: const AppTextStyle().displayLarge?.copyWith(
            fontSize: 19,
          ),
          textAlign: TextAlign.center,
        ),
        duration: const Duration(milliseconds: 3000),
        padding: REdgeInsets.symmetric(horizontal: 20, vertical: 15),
        margin: REdgeInsets.symmetric(vertical: 15, horizontal: 50),
        elevation: 10,
        behavior: SnackBarBehavior.floating,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
