import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/routes/app_route_name.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_appbar_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/controller/favorites_controller.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/presentation/widgets/custom_favorite_tapbar.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/presentation/widgets/custom_food_page.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/favorites/presentation/widgets/custom_recipes_page.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppbarWidget(
        text: "Favorites",
        back: false,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 31.w, right: 31.w, top: 15.h),
        child: Column(
          children: [
            Consumer<FavoritesController>(
              builder: (context, ref, child) {
                return CustomFavoriteTapbar(
                  selectedIndex: ref.selectedIndex,
                  onTabTapped: (index) => ref.selectedIndex = index,
                );
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Consumer<FavoritesController>(
                builder: (context, ref, child) {
                  return ref.selectedIndex == 0
                      ? CustomFoodPage()
                      : const CustomRecipesPage();
                },
              ),
            ),
            Consumer<FavoritesController>(
              builder: (context, ref, child) {
                return ref.selectedIndex != 0
                    ? Padding(
                        padding: EdgeInsets.symmetric(horizontal: 11.w),
                        child: CustomButtonWidget(
                          onPressed: () {
                            context.go(AppRouteName.search);
                          },
                          text: "Search Food",
                        ),
                      )
                    : const SizedBox();
              },
            ),
            SizedBox(height: 35.h),
          ],
        ),
      ),
    );
  }
}
