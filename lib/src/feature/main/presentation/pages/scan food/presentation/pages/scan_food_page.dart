import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/feature/main/presentation/pages/scan%20food/presentation/widgets/custom_scan_food_bottom_navigation_bar.dart';

class ScanFoodPage extends StatefulWidget {
  const ScanFoodPage({super.key});

  @override
  State<ScanFoodPage> createState() => _ScanFoodPageState();
}

class _ScanFoodPageState extends State<ScanFoodPage> {
  late List<CameraDescription> cameras;
  CameraController? cameraController; // Изменяем на nullable
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    startCamera();
  }

  Future<void> startCamera() async {
    try {
      cameras = await availableCameras();
      cameraController = CameraController(
        cameras[0],
        ResolutionPreset.high,
        enableAudio: false,
      );

      await cameraController!.initialize();
      if (!mounted) return;
      setState(() {
        _isCameraInitialized = true;
      });
    } catch (e) {
      log('Error initializing camera: $e');
    }
  }

  @override
  void dispose() {
    cameraController?.dispose(); // Изменяем на безопасный вызов
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFC0B8,
      body: Stack(
        children: [
          _isCameraInitialized && cameraController != null
              ? Center(
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: CameraPreview(cameraController!),
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(
                    backgroundColor: AppColors.cFFC0B8,
                  ),
                ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.xmark,
                        color: AppColors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.xmark,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const CustomScanFoodBottomNavigationBar(),
            ],
          )
        ],
      ),
    );
  }
}
