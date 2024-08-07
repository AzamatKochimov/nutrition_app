import 'package:provider_go_router_flutter_localizations_inherited_widget/src/models/auth/auth_model.dart';

abstract class AppRepository {
  Future<AuthModel?> postLogin(String email, String password);
  Future<String?> postForgotPassword(String email);
  Future<AuthModel?> postForgotPasswordVerifyEmail(String email, int code);
  Future<AuthModel?> postForgotPasswordNewPassword(String email,String newPassword, String confirmPassword);
}