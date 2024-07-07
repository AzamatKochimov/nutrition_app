import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/controller/favorites_controller.dart';
import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/widget/custom_button_widget.dart';
import '../../../../core/widget/custom_no_result_widget.dart';

class CustomRecipesPage extends StatelessWidget {
  const CustomRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FavoritesController.recipe.isNotEmpty
        ? SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 31.w),
              child: Column(
                children: FavoritesController.recipe,
              ),
            ),
          )
        : Scaffold(
            backgroundColor: AppColors.white,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 31.w),
              child: Center(
                child: Column(
                  children: [
                    const Spacer(),
                    CustomNoResultWidget(
                      image: AppImages.noFoodAndRecipeFoundImage,
                      width: 330.w,
                      title: "No Recipes found",
                      subTitle:
                          "You don’t save any recipes. Go ahead, search and save your favorite recipe",
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 11.w),
                      child: CustomButtonWidget(
                        onPressed: () {
                          context.go(AppRouteName.search);
                        },
                        text: "Search Food",
                      ),
                    ),
                    SizedBox(height: 35.h),
                  ],
                ),
              ),
            ),
          );
  }
}
