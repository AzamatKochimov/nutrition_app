import 'package:provider_go_router_flutter_localizations_inherited_widget/src/models/auth_model.dart';

abstract class AppRepository {
  Future<AuthModel?> postLogin(String email, String password);
}