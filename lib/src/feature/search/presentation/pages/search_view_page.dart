import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_appbar_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';

import '../widgets/custom_search_text_field_widget.dart';

class SearchViewPage extends StatelessWidget {
  const SearchViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      appBar: const CustomAppbarWidget(
        text: "Search",
        back: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const CustomSearchTextFieldWidget(
              hintText: "Junk Food",
              hintextColor: AppColors.c666666,
              prefixIconColor: AppColors.c666666,
              keyboardType: TextInputType.text,
            ),
            const Spacer(),
            SizedBox(
              width: 230.w,
              height: 204.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppImages.noResultFoundImage,
                  const CustomTextWidget(
                    text: "No Results Found",
                    color: AppColors.c696969,
                  ),
                  const CustomTextWidget(
                    text: "Try searching for a different keywork or tweek your search a little",
                    fontSize: 16,
                    color: AppColors.cA9A9A9,
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
