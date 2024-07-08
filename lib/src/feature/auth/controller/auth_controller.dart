import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier{
  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController newPassC = TextEditingController();
  TextEditingController confirmNewPassC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    newPassC.dispose();
    confirmNewPassC.dispose();
  }

  /// For LogIn
  bool logInVisible = true;
  void logInVisibleFunc(){
    logInVisible = !logInVisible;
    notifyListeners();
  }

  /// For Register
  bool registerVisibility = true;
  void registerVisibilityFunc(){
    registerVisibility = !registerVisibility;
    notifyListeners();
  }

  void refresh({required String doYouWantToRefreshLoginOrRegister}){
    doYouWantToRefreshLoginOrRegister == "l" ? logInVisible = true : registerVisibility = true;
    notifyListeners();
  }


}







