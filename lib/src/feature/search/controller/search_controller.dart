import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPageController extends ChangeNotifier {
  final TextEditingController textEditingController = TextEditingController();
  bool textFieldSuffixIcon = false;
  final FocusNode focusNode = FocusNode();

  void requestFocus() {
    focusNode.requestFocus();
    // notifyListeners() здесь не нужен, если не требуется обновлять UI
  }

  void textFieldCounter(String value){
    if (value.isNotEmpty) {
      textFieldSuffixIcon = true;
    }else{
      textFieldSuffixIcon = false;
    }
    notifyListeners();
  }

  void clearText(TextEditingController controller){
    controller.clear();
    textFieldCounter(textEditingController.text);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }
}