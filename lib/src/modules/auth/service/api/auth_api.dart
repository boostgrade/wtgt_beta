import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:where_to_go_today/src/modules/auth/models/request/auth_by_phone_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/request/auth_via_social_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/request/register.dart';
import 'package:where_to_go_today/src/modules/auth/models/response/auth_response_model.dart';

part 'auth_api.g.dart';
///запросы на авторизацию с применением retrofit
@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST('/login/phone')
  Future<AuthResponse> loginByPhone(
    @Body() AuthByPhoneRequest data,
  );

  @POST('/login/meta')
  Future<AuthResponse> loginViaMeta(
    @Body() AuthViaSocialRequest data,
  );

  @POST('/login/apple')
  Future<AuthResponse> loginViaApple(
    @Body() AuthViaSocialRequest data,
  );

  @POST('/login/vk')
  Future<AuthResponse> loginViaVk(
    @Body() AuthViaSocialRequest data,
  );

  @POST('/login/google')
  Future<AuthResponse> loginViaGoogle(
    @Body() AuthViaSocialRequest data,
  );

  @POST('/register')
  Future<RegisterRequest> register(
    @Body() RegisterRequest data,
  );

  @GET('/logout')
  Future<void> logout();
}
