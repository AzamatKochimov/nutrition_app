import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class ScanFoodController with ChangeNotifier {
  late List<CameraDescription> cameras;
  CameraController? cameraController;
  bool isCameraInitialized = false;
  int direction = 0;
  bool cameraFlash = false;

  ScanFoodController(){
    _initializeCamera();
  }

  Future<void> _initializeCamera()async{
    await startCamera(direction);
  }

  Future<void> startCamera(int direction) async {
    try {
      cameras = await availableCameras();
      cameraController = CameraController(
        cameras[direction],
        ResolutionPreset.high,
        enableAudio: false,
      );
      await cameraController!.initialize();
      isCameraInitialized = true;
      notifyListeners();
    } catch (e) {
      log('Error initializing camera: $e');
    }
  }

  void cameraFlashOnOff(){
    cameraFlash = !cameraFlash;
    notifyListeners();
  }

  void switchCamera(){
    direction = direction==0?1:0;
    startCamera(direction);
  }

  @override
  void dispose() {
    cameraController?.dispose();
    super.dispose();
  }
}

