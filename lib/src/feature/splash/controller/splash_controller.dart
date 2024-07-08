import 'package:flutter/material.dart';

class SplashController extends ChangeNotifier{
  PageController pageController = PageController();
  int _currentIndex = 0;
  String _title = "";
  String _subTitle = "";
  bool _isFinal = false;

  int get currentIndex => _currentIndex;
  String get title => _title;
  String get subTitle => _subTitle;
  bool get isFinal => _isFinal;

  void onPageChanged(int index) {
    _currentIndex = index;
    if (currentIndex == 0) {
      _title = "Eat Healthy";
      _subTitle = "Maintaining good health should be the primary focus of everyone.";
      _isFinal = false;
    }if (currentIndex == 1) {
      _title = "Healthy Recipes";
      _subTitle = "Browse thousands of healthy recipes from all over the world.";
      _isFinal = false;
    }if (currentIndex == 2) {
      _title = "Track Your Health";
      _subTitle = "With amazing inbuilt tools you can track your progress.";
      _isFinal = true;
    }
    notifyListeners();
  }

  SplashController(){
    onPageChanged(0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
