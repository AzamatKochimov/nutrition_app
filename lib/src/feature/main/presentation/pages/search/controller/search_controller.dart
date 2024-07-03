import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchController extends ChangeNotifier {

  TextEditingController? textEditingController;

  int textFieldCounter = 0;
  bool textFieldSuffixIcon = false;
  void textFieldSuffixIconTrue(){
    if (textEditingController!=null) {
      textFieldSuffixIcon = true;
      notifyListeners();
    }
  }
}