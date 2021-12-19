import 'package:json_annotation/json_annotation.dart';
import 'package:where_to_go_today/src/modules/auth/models/response/token_response_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/response/user_response_model.dart';
part 'auth_response_model.g.dart';

/// Модель пользователя, прилтеающая после запроса авторизации
@JsonSerializable()
class AuthResponse {
  final UserResponse user;
  final TokenResponse token;

  AuthResponse({
    required this.user,
    required this.token,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}
