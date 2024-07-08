import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeController extends ChangeNotifier{
  PageController homaPageController = PageController();
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  void onPageChanged(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    homaPageController.dispose();
  }
}