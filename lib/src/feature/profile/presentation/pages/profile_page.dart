import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/widget/custom_appbar_widget.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/auth/controller/auth_controller.dart';
import '../../../../core/style/images.dart';
import '../../../../core/widget/custom_text_widget.dart';
import '../widgets/custom_profile_page_items_column_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isCamera = false;
  XFile? xFile;

  /// Oka xovotr omen backend qoshilganda saqlanadigan qiladi!
  Future<void> createImage() async {
    final ImagePicker picker = ImagePicker();
    xFile = await picker.pickImage(
      source: isCamera ? ImageSource.camera : ImageSource.gallery,
    );
    await getImage();
  }

  Future<void> getImage() async {}

  Future<void> deleteImage() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppbarWidget(
        text: "Profile",
        back: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 36.h),
              MaterialButton(
                onPressed: onPressed,
                onLongPress: onLongPress,
                height: 109,
                minWidth: 109,
                shape: const CircleBorder(),
                child: CircleAvatar(
                  radius: 80.r,
                  backgroundColor: AppColors.transparent,
                  child: AppImages.defaultProfileImage,
                ),
              ),
              const Spacer(),
              Consumer<AuthController>(builder: (context, ref, child) {
                return Column(
                  children: [
                    CustomTextWidget(
                      text: ref.authModel?.name.toString() ?? "Name",
                      fontSize: 25,
                      color: AppColors.c272727,
                    ),
                    CustomTextWidget(
                      text:ref.authModel?.email.toString() ?? "email",
                      fontSize: 16,
                      color: AppColors.cA1A1A1,
                    ),
                  ],
                );
              }),
              const Spacer(),
              const CustomProfilePageItemsColumnWidget(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  void onPressed() {
    showModalBottomSheet(
      backgroundColor: AppColors.white,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 100,
          child: Column(
            children: [
              MaterialButton(
                onPressed: () async {
                  Navigator.pop(context);
                  isCamera = true;
                  await createImage();
                },
                minWidth: double.infinity,
                child: const CustomTextWidget(
                  text: "Camera",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: AppColors.c707070,
                ),
              ),
              MaterialButton(
                onPressed: () async {
                  Navigator.pop(context);
                  isCamera = false;
                  await createImage();
                },
                minWidth: double.infinity,
                child: const CustomTextWidget(
                  text: "Gallery",
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: AppColors.c707070,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void onLongPress() {
    showModalBottomSheet(
      backgroundColor: AppColors.white,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 60,
          child: Column(
            children: [
              MaterialButton(
                onPressed: () async {
                  Navigator.pop(context);
                  await deleteImage();
                },
                minWidth: double.infinity,
                child: const CustomTextWidget(
                  text: "Delete",
                  fontWeight: FontWeight.bold,
                  color: AppColors.cd91424,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
