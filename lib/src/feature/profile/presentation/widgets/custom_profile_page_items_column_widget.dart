import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import 'custom_profile_page_item_widget.dart';

class CustomProfilePageItemsColumnWidget extends StatelessWidget{
  const CustomProfilePageItemsColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ProfilePageItemWidget(
          image: AppImages.editProfileIcon,
          text: "Edit Profile",
          onPressed: (){},
        ),
        ProfilePageItemWidget(
          image: AppImages.renewPlansIcon,
          text: "Renew Plans",
          onPressed: (){},
        ),
        ProfilePageItemWidget(
          image: AppImages.settingsIcon,
          text: "Settings",
          onPressed: (){},
        ),
        const Divider(
          color: AppColors.cF6F6F6,
        ),
        ProfilePageItemWidget(
          image: AppImages.termsAndPrivacyPolicyIcon,
          text: "Terms & Privacy Policy",
          onPressed: (){},
        ),
        ProfilePageItemWidget(
          image: AppImages.logOutIcon,
          text: "Log Out",
          onPressed: (){},
        ),
      ],
    );
  }
}