
import 'package:where_to_go_today/src/domain/user.dart';
import 'package:where_to_go_today/src/modules/authapi/models/request/auth_by_phone_model.dart';
import 'package:where_to_go_today/src/modules/authapi/models/request/auth_via_social_model.dart';
import 'package:where_to_go_today/src/modules/authapi/models/response/auth_response_model.dart';
import 'package:where_to_go_today/src/modules/authservices/api/auth_api.dart';

class AuthRepository{

  Auth api;

  AuthRepository({required this.api});

  Future<User> loginByPhone(AuthByPhoneRequest data) async {
    AuthResponse response;
    response = await api.loginByPhone(data);

    return User(
      id: response.id,
      name: response.name,
      lastName: response.lastName,
      phone: response.phone,
      email: '',
      birthDate: response.birthDate.toString(),);
  }
  Future<User> loginViaMeta(AuthViaSocialRequest data) async {
    AuthResponse response;
    response = await api.loginViaMeta(data);

    return User(
      id: response.id,
      name: response.name,
      lastName: response.lastName,
      phone: response.phone,
      email: '',
      birthDate: response.birthDate.toString(),);
  }
  Future<User> loginViaApple(AuthViaSocialRequest data) async {
    AuthResponse response;
    response = await api.loginViaApple(data);

    return User(
      id: response.id,
      name: response.name,
      lastName: response.lastName,
      phone: response.phone,
      email: '',
      birthDate: response.birthDate.toString(),);
  }
  Future<User> loginViaVk(AuthViaSocialRequest data) async {
    AuthResponse response;
    response = await api.loginViaVk(data);

    return User(
      id: response.id,
      name: response.name,
      lastName: response.lastName,
      phone: response.phone,
      email: '',
      birthDate: response.birthDate.toString(),);
  }
  Future<User> loginViaGoogle(AuthViaSocialRequest data) async {
    AuthResponse response;
    response = await api.loginViaGoogle(data);

    return User(
      id: response.id,
      name: response.name,
      lastName: response.lastName,
      phone: response.phone,
      email: '',
      birthDate: response.birthDate.toString(),);
  }

}