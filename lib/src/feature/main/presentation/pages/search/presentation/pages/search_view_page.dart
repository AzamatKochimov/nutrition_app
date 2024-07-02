import 'package:flutter/material.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_appbar_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/search/presentation/widgets/custom_search_text_field_widget.dart';

class SearchViewPage extends StatelessWidget {
  const SearchViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppbarWidget(text: "Search",),
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
            AppImages.noResultFoundImage,
            const Spacer(),
          ],
        ),
      ),
    );
  }
}