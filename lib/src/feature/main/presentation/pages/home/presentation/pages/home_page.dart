import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_text_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/home/presentation/widgets/custom_home_button_card.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/home/presentation/widgets/custom_home_center_card.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/home/presentation/widgets/custom_home_center_top_button.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/home/presentation/widgets/custom_home_top_text.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/splash/presentation/widgets/custom_page_dot_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(),
              const CustomHomeTopText(
                  title: "Hello Shambhavi,",
                  subTitle: "Find, track and eat heathy food."),
              const CustomHomeCenterTopCard(),
              const CustomPageDotWidget(currentIndex: 0, index: 0),
              const CustomHomeCenterCard(),
              const CustomTextWidget(
                text: "Choose Your Favorites",
                alignment: Alignment.centerLeft,
              ),
              SizedBox(
                height: 150.h,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomHomeBottomButtonCard(
                      image: AppImages.homeStrawberryImage,
                      title: "Fruits",
                    );
                  },
                  itemCount: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
