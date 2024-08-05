import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/text_style.dart';

class CustomAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool back;
  final void Function()? onPressedBack;
  final String text;
  const CustomAppbarWidget({
    super.key,
    required this.text,
    required this.back,
    this.onPressedBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: back
          ? Transform.scale(
              scale: 1.0.w,
              child: IconButton(
                icon: const Icon(
                  CupertinoIcons.chevron_left,
                  color: AppColors.black,
                ),
                onPressed: onPressedBack ??
                    () {
                      context.pop();
                    },
              ),
            )
          : null,
      backgroundColor: AppColors.white,
      title: Text(
        text,
        style: const AppTextStyle().displayMedium?.copyWith(
              color: AppColors.c0D0D0D,
            ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
