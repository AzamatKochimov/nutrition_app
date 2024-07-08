import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/home/presentation/widgets/custom_home_center_top_button.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/splash/presentation/widgets/custom_page_dot_widget.dart';

class CustomHomePageview extends StatelessWidget {
  final PageController controller;
  final void Function(int) onPageChanged;
  final int currentIndex;
  const CustomHomePageview({
    super.key, 
    required this.controller, 
    required this.onPageChanged, 
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 199.h,
          width: double.infinity,
          child: PageView(
            controller: controller,
            onPageChanged: onPageChanged,
            children: const [
              CustomHomeCenterTopCard(),
              CustomHomeCenterTopCard(),
              CustomHomeCenterTopCard(),
            ],
          ),
        ),
        SizedBox(height: 20.h),
          SizedBox(
            height: 10.h,
            width: 52.w,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPageDotWidget(currentIndex: currentIndex, index: 0),
                  CustomPageDotWidget(currentIndex: currentIndex, index: 1),
                  CustomPageDotWidget(currentIndex: currentIndex, index: 2),
                ],
              ),
          ),
      ],
    );
  }
}