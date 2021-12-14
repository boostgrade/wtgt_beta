import 'package:json_annotation/json_annotation.dart';
part 'auth_response_model.g.dart';

/// Модель пользователя, прилтеающая после запроса авторизации
@JsonSerializable()
class AuthResponse {

  final int id;
  final String name;
  final String lastName;
  final String phone;
  final DateTime birthDate;
  final String token;
  final String refreshToken;

  AuthResponse({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.birthDate,
    required this.token,
    required this.refreshToken,});

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}
