import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

/// Модель пользователя, прилтеающая после запроса авторизации
@JsonSerializable()
class UserResponse {

  int id;
  String name;
  String lastName;
  String phone;
  DateTime birthDate;
  String token;
  String refreshToken;

  UserResponse({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.birthDate,
    required this.token,
    required this.refreshToken,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
