import "package:flutter/foundation.dart";

@immutable
final class AppRouteName {
  const AppRouteName._();

  static const String splashPage = "/splash_page";
  static const String authGate = "/auth_gate";
  static const String onboarding = "/onboarding";
  static const String login = "/login";
  static const String forgotPassword = "forgot_password";
  static const String forgotPasswordPinCode = "forgot_password_pin_code";
  static const String setANewPassword = "set_a_new_password";
  static const String register = "register";
  static const String main = "/main_page";
  static const String home = "/";
  static const String search = "/search_page";
  static const String searchView = "search_view_page";
  static const String scan = "/scan_food_page";
  static const String favorites = "/favorites_page";
  static const String profile = "/profile_page";
}
