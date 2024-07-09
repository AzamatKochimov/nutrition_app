import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_appbar_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_no_result_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/search/controller/search_controller.dart';
import '../widgets/custom_search_text_field_widget.dart';

class SearchViewPage extends StatelessWidget {
  const SearchViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SearchPageController>(context, listen: false).focusNode.requestFocus();
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      appBar: const CustomAppbarWidget(
        text: "Search",
        back: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Consumer<SearchPageController>(
          builder: (context,ref,child) {
            return Column(
              children: [
                CustomSearchTextFieldWidget(
                      hintText: "Junk Food",
                      hintextColor: AppColors.c666666,
                      prefixIconColor: AppColors.c666666,
                      keyboardType: TextInputType.text,
                      onChanged: (value){
                        value = ref.textEditingController.text;
                        ref.textFieldCounter(value);
                      },
                      suffixIcon: ref.textFieldSuffixIcon,
                      suffixIconOnPressed: () {
                        ref.clearText(ref.textEditingController);
                        ref.textFieldCounter(ref.textEditingController.text);
                      },
                      controller: ref.textEditingController,
                      focusNode: ref.focusNode,
                    ),
                const Spacer(),
                CustomNoResultWidget(
                  image: AppImages.noResultFoundImage,
                  title: "No Results Found",
                  subTitle: "Try searching for a different keywork or tweek your search a little",
                ),
                const Spacer(),
              ],
            );
          }
        ),
      ),
    );
  }
}
