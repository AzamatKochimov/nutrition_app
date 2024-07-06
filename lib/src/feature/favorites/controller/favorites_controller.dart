import 'package:flutter/material.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/images.dart';
import '../../../core/widget/custom_food_widget.dart';

class FavoritesController extends ChangeNotifier{
  static List<CustomFoodWidget> food = [
    CustomFoodWidget(
      image: AppImages.cakeImage,
      onPressed: () {},
      height: 105,
      width: 105,
      backColor: AppColors.cFFF8EE,
    ),
    CustomFoodWidget(
      image: AppImages.hamburgerSmallImage,
      onPressed: () {},
      height: 105,
      width: 105,
      backColor: AppColors.cFFF8EE,
    ),
    CustomFoodWidget(
      image: AppImages.pizzaImage,
      onPressed: () {},
      height: 105,
      width: 105,
      backColor: AppColors.cFFF8EE,
    ),
    CustomFoodWidget(
      image: AppImages.candyImage,
      onPressed: () {},
      height: 105,
      width: 105,
      backColor: AppColors.cFFF8EE,
    ),
    CustomFoodWidget(
      image: AppImages.hotdogImage,
      onPressed: () {},
      height: 105,
      width: 105,
      backColor: AppColors.cFFF8EE,
    ),
    CustomFoodWidget(
      image: AppImages.favoritesFoodPageAddFoodPlusIcon,
      onPressed: () {},
      height: 105,
      width: 105,
      backColor: AppColors.cFFF8EE,
    ),
  ];
}