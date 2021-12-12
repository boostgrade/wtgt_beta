import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:where_to_go_today/src/modules/authapi/models/request/auth_by_phone_model.dart';
import 'package:where_to_go_today/src/modules/authapi/models/request/auth_via_social_model.dart';
import 'package:where_to_go_today/src/modules/authapi/models/response/user_model.dart';

part 'auth_api.g.dart';
@RestApi(baseUrl: 'https://stoplight.io/mocks/softech/wtgt/75539')
abstract class Auth{
  static const String requestBody='application/json';
  factory Auth(Dio dio, {String baseUrl}) = _Auth;

  @POST('/login/phone')
  Future<UserResponse> loginByPhone(@Body() AuthByPhoneRequest data,);

  @POST('/login/meta')
  Future<UserResponse> loginViaMeta(@Body() AuthViaSocialRequest data,);

  @POST('/login/apple')
  Future<UserResponse> loginViaApple(@Body() AuthViaSocialRequest data,);

  @POST('/login/vk')
  Future<UserResponse> loginViaVk(@Body() AuthViaSocialRequest data,);

  @POST('/login/google')
  Future<UserResponse> loginViaGoogle(@Body() AuthViaSocialRequest data,);
}