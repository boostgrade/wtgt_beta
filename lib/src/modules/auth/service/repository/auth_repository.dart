import 'package:where_to_go_today/src/domain/user.dart';
import 'package:where_to_go_today/src/modules/auth/models/request/auth_by_phone_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/request/auth_via_social_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/response/auth_response_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/response/register_response_model.dart';
import 'package:where_to_go_today/src/modules/auth/service/api/auth_api.dart';

///Репозиторий авторизации, скрывающий методы из AuthApi.
class AuthRepository {  final AuthApi api;

AuthRepository({required this.api});

Future<User> loginByPhone(AuthByPhoneRequest data) async {
  final AuthResponse response = await api.loginByPhone(data);

  return convertResponseToDomainModel(response);
}

Future<User> loginViaMeta(AuthViaSocialRequest data) async {
  final AuthResponse response = await api.loginViaMeta(data);

  return convertResponseToDomainModel(response);
}

Future<User> loginViaApple(AuthViaSocialRequest data) async {
  final AuthResponse response = await api.loginViaApple(data);

  return convertResponseToDomainModel(response);
}

Future<User> loginViaVk(AuthViaSocialRequest data) async {
  final AuthResponse response = await api.loginViaVk(data);

  return convertResponseToDomainModel(response);
}

Future<User> loginViaGoogle(AuthViaSocialRequest data) async {
  final AuthResponse response = await api.loginViaGoogle(data);

  return convertResponseToDomainModel(response);
}

Future<void> logout() async {
  await api.logout();
}

Future<void> register(RegisterResponse data) async {
  await api.register(data);
}

User convertResponseToDomainModel(AuthResponse response){
  return User(
    id: response.user.id,
    name:response.user.name,
    lastName:response.user.lastName,
    email:'',
    birthDate: DateTime.parse(response.user.birthDate),
    phone: response.user.phone,
  );
}
}
