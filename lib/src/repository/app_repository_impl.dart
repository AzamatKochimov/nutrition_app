import 'dart:developer';

import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/api/api.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/models/auth_model.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/repository/app_repository.dart';

class AppRepositoryImpl implements AppRepository {
  @override
  Future<AuthModel?> postLogin(String email, String password) async {
    String? str = await Api.post(Api.apiPostSignIn, {
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
}
