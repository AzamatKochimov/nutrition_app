import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/controller/favorites_controller.dart';
import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/images.dart';
import '../../../../core/widget/custom_button_widget.dart';
import '../../../../core/widget/custom_no_result_widget.dart';

class CustomFoodPage extends StatelessWidget {

 const CustomFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FavoritesController.food.isNotEmpty ? Center(
      child: GridView.count(
        mainAxisSpacing: 16.0.h,
        crossAxisSpacing: 16.0.w,
        crossAxisCount: 3,
        children: FavoritesController.food,
      ),
    ) : Center(
      child: Column(
        children: [
          const Spacer(),
          CustomNoResultWidget(
            image: AppImages.noFoodAndRecipeFoundImage,
            width: 330.w,
            title: "No Foods Found",
            subTitle: "You don't save any food. Go ahead, search and save your favorite food",
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.w),
            child: CustomButtonWidget(
              onPressed: (){
                context.go(AppRouteName.search);
              },
              text: "Search Food",
            ),
          ),
          SizedBox(height: 35.h),
        ],
      ),
    );
  }
}
