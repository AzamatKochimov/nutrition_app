import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_button_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_food_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_rich_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';

import 'custom_text_result_food.dart';

class CustomScanFoodResult extends StatelessWidget {
  const CustomScanFoodResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 12),
                  child: IconButton(
                    onPressed: (){
                      context.pop();
                    },
                    icon: const Icon(
                      CupertinoIcons.xmark,
                      color: AppColors.black,
                    ),
                  ),
                ),
                Center(child: AppImages.hamburgerBigImage),
                Container(
                  height: 110.h,
                  width: double.infinity,
                  color: AppColors.cFFF8EE,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTextResultFood(
                        title: "Protein",
                        subTitle: "450g",
                      ),
                      CustomTextResultFood(
                        title: "Calories",
                        subTitle: "220g",
                      ),
                      CustomTextResultFood(
                        title: "Fat",
                        subTitle: "100g",
                      ),
                      CustomTextResultFood(
                        title: "Carbs",
                        subTitle: "49g",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextWidget(text: "Details"),
                  CustomRichText(
                    text:
                        "A hamburger (also burger for short) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread",
                    navigateText: "Read More...",
                    navigateTextFontWeight: FontWeight.w600,
                    navigateTextSize: 16.h,
                  ),
                  const CustomTextWidget(text: "Ingredients"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomFoodWidget(image: AppImages.breadImage),
                      CustomFoodWidget(image: AppImages.tomatoImage),
                      CustomFoodWidget(image: AppImages.saladImage),
                      const CustomFoodWidget(
                        title: "View\n  All",
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: CustomButtonWidget(
                      onPressed: () {},
                      text: "Add To Favorites",
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
