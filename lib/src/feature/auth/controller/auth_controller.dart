import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier{
  static TextEditingController nameC = TextEditingController();
  static TextEditingController emailC = TextEditingController();
  static TextEditingController passwordC = TextEditingController();
  static TextEditingController newPassC = TextEditingController();
  static TextEditingController confirmNewPassC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    newPassC.dispose();
    confirmNewPassC.dispose();
  }
}