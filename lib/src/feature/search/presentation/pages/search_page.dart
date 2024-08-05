import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/routes/app_route_name.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';

import '../widgets/custom_search_text_field_widget.dart';
import '../widgets/custom_search_vegetable_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(),
                  CustomSearchTextFieldWidget(
                    hintText: "Search recipes, articles, people...",
                    onTap: () => context.go(
                      "${AppRouteName.search}/${AppRouteName.searchView}",
                    ),
                  ),
                  const CustomTextWidget(
                    text: "Hot Now",
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 243.h,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const CustomSearchVegetableWidget(
                          title: "The Pumkins Secrets",
                          subTitle: "The Pumkins Secrets",
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomTextWidget(
                    text: "Trending",
                    alignment: Alignment.centerLeft,
                  ),
                  CustomTextWidget(
                    text: "best vegetable recipes",
                    alignment: Alignment.centerLeft,
                    fontSize: 16,
                    color: AppColors.cFF8473,
                  ),
                  Divider(color: AppColors.cF5F5F5,),
                  CustomTextWidget(
                    text: "cool season vegetables",
                    alignment: Alignment.centerLeft,
                    fontSize: 16,
                    color: AppColors.cFF8473,
                  ),
                  Divider(color: AppColors.cF5F5F5,),
                  CustomTextWidget(
                    text: "chicken recipes with eggs",
                    alignment: Alignment.centerLeft,
                    fontSize: 16,
                    color: AppColors.cFF8473,
                  ),
                  Divider(color: AppColors.cF5F5F5,),
                  CustomTextWidget(
                    text: "soups",
                    alignment: Alignment.centerLeft,
                    fontSize: 16,
                    color: AppColors.cFF8473,
                  ),
                  Divider(color: AppColors.cF5F5F5,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
