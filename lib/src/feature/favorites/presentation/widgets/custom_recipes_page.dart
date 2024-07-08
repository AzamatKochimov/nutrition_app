import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/controller/favorites_controller.dart';
import '../../../../core/style/images.dart';
import '../../../../core/widget/custom_no_result_widget.dart';

class CustomRecipesPage extends StatelessWidget {
  const CustomRecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (FavoritesController.recipe.isNotEmpty) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return FavoritesController.recipe[index];
        },
        itemCount: FavoritesController.recipe.length,
      );
    } else {
      return Center(
        child: CustomNoResultWidget(
          image: AppImages.noFoodAndRecipeFoundImage,
          width: 330.w,
          title: "No Recipes found",
          subTitle:
              "You don’t save any recipes. Go ahead, search and save your favorite recipe",
        ),
      );
    }
  }
}
