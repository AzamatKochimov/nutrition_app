import 'dart:developer';

import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/api/api.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/models/auth/auth_model.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/repository/app_repository.dart';

class AppRepositoryImpl implements AppRepository {

  @override
  Future<AuthModel?> postLogin(String email, String password) async {
    String? str = await Api.post(Api.apiPostSignIn,body: {
      "email": email,
      "password": password,
    });

    try {
      if (str != null) {
        AuthModel authModel = authModelFromJson(str);
        return authModel;
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
  
  @override
  Future<String?> postForgotPassword(String email)async {
    String? str = await Api.post(Api.apiPostForgotPassword, param:  {
      "email": email,
    });
    log("postForgotPassword : $str");
    try {
      if (str != null) {
        return str;
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
  
  @override
  Future<AuthModel?> postForgotPasswordVerifyEmail(String email, int code) async{
    String? str = await Api.post(Api.apiPostForgotPasswordVerifyEmail, body:  {
      "email": email,
      "code" : code,
    });
    log("apiPostForgotPasswordVerifyEmail : $str");
    try {
      if (str != null) {
        AuthModel model = authModelFromJson(str);
        return model;
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
  
  @override
  Future<AuthModel?> postForgotPasswordNewPassword(String email,String password, String confirmPassword) async {
    String? str = await Api.post(Api.apiPostForgotPasswordNewPassword, body: {
      "email": email,
      "password" : password,
      "confirmPassword" : confirmPassword,
    });
    log("apiPostForgotPasswordNewPassword : $str");
    try {
      if (str != null) {
        AuthModel model = authModelFromJson(str);
        return model;
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
