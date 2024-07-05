import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier{
  static TextEditingController nameC = TextEditingController();
  static TextEditingController emailC = TextEditingController();
  static TextEditingController passwordC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameC.dispose();
    emailC.dispose();
    passwordC.dispose();
  }
}