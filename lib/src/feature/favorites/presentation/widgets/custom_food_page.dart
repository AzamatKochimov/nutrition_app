import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/controller/favorites_controller.dart';

class CustomFoodPage extends StatelessWidget {

 const CustomFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Center(
        child: GridView.count(
          // mainAxisSpacing: 16.0.h,
          // crossAxisSpacing: 16.0.w,
          crossAxisCount: 3,
          children: FavoritesController.food,
        ),
      ),
    );
  }
}
