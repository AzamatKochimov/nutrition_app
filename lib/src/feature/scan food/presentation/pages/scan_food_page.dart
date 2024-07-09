import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/routes/app_route_name.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/images.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/scan%20food/controller/scan_food_controller.dart';
import '../widgets/custom_scan_food_bottom_navigation_bar.dart';

class ScanFoodPage extends StatelessWidget {
  const ScanFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFC0B8,
      body: Stack(
        children: [
          Consumer<ScanFoodController>(
            builder: (context, scanFoodController,child){
              if (scanFoodController.isCameraInitialized && scanFoodController.cameraController != null) {
                return GestureDetector(
                  onTapDown: (details) => scanFoodController.setFocusPoint(context,details),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: double.infinity,
                    child: CameraPreview(scanFoodController.cameraController!),
                  ),
                );
              }else{
                return Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: AppColors.cFFC0B8,
                );
              }
            },
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        context.go(AppRouteName.home);
                      },
                      icon: AppImages.scannerPageXIcon,
                    ),
                    const Spacer(),
                    Consumer<ScanFoodController>(
                      builder: (context, scanFoodController, child) {
                        return IconButton(
                        onPressed: scanFoodController.cameraFlashOnOff,
                        icon: Icon(
                          scanFoodController.cameraFlash ? CupertinoIcons.bolt_slash_fill : CupertinoIcons.bolt_fill,
                          color: AppColors.white,
                        ),
                      );
                      },
                    ),
                  ],
                ),
              ),
              const Spacer(),
              AppImages.scannerPageMiddleSquareIcon,
              const Spacer(),
              Consumer<ScanFoodController>(
                builder: (context,scanFoodController,child) {
                  return CustomScanFoodBottomNavigationBar(
                    onPressedRefreshCamera: () async {
                      scanFoodController.switchCamera();
                    },
                  );
                }
              ),
            ],
          )
        ],
      ),
    );
  }
}
