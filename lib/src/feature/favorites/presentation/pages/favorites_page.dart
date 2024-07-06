import 'package:flutter/material.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_appbar_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/presentation/widgets/custom_food_page.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/presentation/widgets/custom_recipes_page.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/widget/custom_text_widget.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  FavoritesPageState createState() => FavoritesPageState();
}

class FavoritesPageState extends State<FavoritesPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbarWidget(
        text: "Favorites",
        back: false,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: Container(
                  width: 156.5,
                  height: 48,
                  decoration: BoxDecoration(
                    color: selectedIndex == 0 ? AppColors.cFF9385 : AppColors.cFFF8EE,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: CustomTextWidget(
                      text: "Food",
                      fontSize: 20,
                      color: selectedIndex == 0 ? AppColors.cFFF8EE : AppColors.cFF9385,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: Container(
                  width: 156.5,
                  height: 48,
                  decoration: BoxDecoration(
                    color: selectedIndex == 1 ? AppColors.cFF9385 : AppColors.cFFF8EE,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: CustomTextWidget(
                      text: "Recipes",
                      fontSize: 20,
                      color: selectedIndex == 1 ? AppColors.cFFF8EE : AppColors.cFF9385,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: selectedIndex == 0 ? CustomFoodPage() : const CustomRecipesPage(),
          ),
        ],
      ),
    );
  }
}
