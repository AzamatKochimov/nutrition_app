import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/routes/app_route_name.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/utils/utils.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/models/auth/auth_model.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/repository/app_repository.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/repository/app_repository_impl.dart';

class AuthController extends ChangeNotifier {
  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController sentCodeC = TextEditingController();
  TextEditingController confirmNewPassC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    sentCodeC.dispose();
    confirmNewPassC.dispose();
  }

  /// For LogIn
  bool logInVisible = true;
  void logInVisibleFunc() {
    logInVisible = !logInVisible;
    notifyListeners();
  }

  /// For Register
  bool registerVisibility = true;
  void registerVisibilityFunc() {
    registerVisibility = !registerVisibility;
    notifyListeners();
  }

  void refresh({required String doYouWantToRefreshLoginOrRegister}) {
    doYouWantToRefreshLoginOrRegister == "l"
        ? logInVisible = true
        : registerVisibility = true;
    notifyListeners();
  }

  // Bekend bo'yicha

  final AppRepository repository = AppRepositoryImpl();
  AuthModel? authModel;

  Future<void> login(BuildContext context) async {
    authModel = await repository.postLogin(emailC.text, passwordC.text);
    // log(authModel.toString());
    // log(authModel?.name.toString()??"");
    // log(authModel?.email.toString()??"");
    log(authModel?.id.toString()??"");
    if (context.mounted && authModel != null) {
      emailC.clear();
      passwordC.clear();
      Utils.fireSnackBar(
        message: "Successfully Log In",
        context: context,
        backgroundColor: AppColors.c91C788,
      );
      context.go(AppRouteName.home);
    } else {
      Utils.fireSnackBar(
        message: "Error nimadir xato",
        context: context,
        backgroundColor: AppColors.cFF8473,
      );
    }
  }

  Future<void> forgotPassword(BuildContext context) async {
    String? str = await repository.postForgotPassword(emailC.text);
    log("$str");
    if (context.mounted && str != null) {
      Utils.fireSnackBar(
        message: "Successfully",
        context: context,
        backgroundColor: AppColors.c91C788,
      );
      context.go("${AppRouteName.login}/${AppRouteName.register}/${AppRouteName.forgotPassword}/${AppRouteName.forgotPasswordPinCode}");
    } else {
      Utils.fireSnackBar(
        message: "Error email",
        context: context,
        backgroundColor: AppColors.cFF8473,
      );
    }
  }

  Future<void> forgotPasswordVerifyEmail(BuildContext context) async {
    authModel = await repository.postForgotPasswordVerifyEmail(emailC.text,int.tryParse(sentCodeC.text)??0);
    log(sentCodeC.text);
    log("forgotPasswordVerifyEmailModel : ${authModel?.email}");
    if (context.mounted && authModel != null) {
      sentCodeC.clear();
      Utils.fireSnackBar(
        message: "Successfully",
        context: context,
        backgroundColor: AppColors.c91C788,
      );
      context.go("${AppRouteName.login}/${AppRouteName.register}/${AppRouteName.forgotPassword}/${AppRouteName.forgotPasswordPinCode}/${AppRouteName.setANewPassword}");
    } else {
      Utils.fireSnackBar(
        message: "Error code",
        context: context,
        backgroundColor: AppColors.cFF8473,
      );
    }
  }

  Future<void> postForgotPasswordNewPassword(BuildContext context) async {
    authModel = await repository.postForgotPasswordNewPassword(emailC.text,passwordC.text,confirmNewPassC.text);
    log(emailC.text);
    log(passwordC.text);
    log(confirmNewPassC.text);
    if (context.mounted && authModel != null) {
      emailC.clear();
      passwordC.clear();
      confirmNewPassC.clear();
      Utils.fireSnackBar(
        message: "Successfully",
        context: context,
        backgroundColor: AppColors.c91C788,
      );
      context.go(AppRouteName.login);
    } else {
      Utils.fireSnackBar(
        message: "Error password",
        context: context,
        backgroundColor: AppColors.cFF8473,
      );
    }
  }
}
