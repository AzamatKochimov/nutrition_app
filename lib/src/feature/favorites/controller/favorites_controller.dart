import 'package:flutter/material.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/images.dart';
import '../../../core/widget/custom_food_widget.dart';
import '../presentation/widgets/custom_recipe_widget.dart';

class FavoritesController extends ChangeNotifier{
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index){
    _selectedIndex = index;
    notifyListeners();
  }

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
      onPressed: () {

      },
      height: 105,
      width: 105,
      backColor: AppColors.cFFF8EE,
    ),
  ];
  static List<CustomRecipeWidget> recipe = [
    CustomRecipeWidget(
      image: AppImages.recipeMealRomen,
      kcal: 250,
      title: "Chopped Spring Ramen",
      subTitle: "Scallions & tomatoes",
      iconButton: IconButton(
        onPressed: (){},
        icon: AppImages.favoritesFavoriteIcon,
      ),
    ),
    CustomRecipeWidget(
      image: AppImages.recipeMealChicken,
      kcal: 450,
      title: "Chicken Tandoori",
      subTitle: "Chicken & Salad",
      iconButton: IconButton(
        onPressed: (){},
        icon: AppImages.favoritesFavoriteIcon,
      ),
    ),
  ];
}