import 'package:flutter/material.dart';

class SplashController extends ChangeNotifier{

  static final PageController pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
