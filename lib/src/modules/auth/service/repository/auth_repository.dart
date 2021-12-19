import 'package:where_to_go_today/src/modules/auth/models/request/auth_by_phone_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/request/auth_via_social_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/request/register.dart';
import 'package:where_to_go_today/src/modules/auth/models/response/auth_response_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/response/user_response_model.dart';
import 'package:where_to_go_today/src/modules/auth/service/api/auth_api.dart';

class AuthRepository { ///Репозиторий авторизации, скрывающий методы из AuthApi
  final AuthApi api;

  AuthRepository({required this.api});

  Future<UserResponse> loginByPhone(AuthByPhoneRequest data) async {
    final AuthResponse response = await api.loginByPhone(data);

    return response.user;
  }

  Future<UserResponse> loginViaMeta(AuthViaSocialRequest data) async {
    final AuthResponse response = await api.loginViaMeta(data);

    return response.user;
  }

  Future<UserResponse> loginViaApple(AuthViaSocialRequest data) async {
    final AuthResponse response = await api.loginViaApple(data);

    return response.user;
  }

  Future<UserResponse> loginViaVk(AuthViaSocialRequest data) async {
    final AuthResponse response = await api.loginViaVk(data);

    return response.user;
  }

  Future<UserResponse> loginViaGoogle(AuthViaSocialRequest data) async {
    final AuthResponse response = await api.loginViaGoogle(data);

    return response.user;
  }

  Future<void> logout() async {
    await api.logout();
  }

  Future<void> register(RegisterRequest data) async {
    await api.register(data);
  }

}
