import 'package:flutter/material.dart';

class ForgotPasswordController extends ChangeNotifier{
  static TextEditingController emailC = TextEditingController();
  static TextEditingController passC = TextEditingController();
  static TextEditingController newPassC = TextEditingController();
  static TextEditingController confirmNewPassC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailC.dispose();
    passC.dispose();
    newPassC.dispose();
    confirmNewPassC.dispose();
  }
}