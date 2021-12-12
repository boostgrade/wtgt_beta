import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

/// Модель пользователя, прилтеающая после запроса авторизации
@JsonSerializable()
class User{
  int id;
  String name;
  String lastName;
  String phone;
  DateTime birthDate;
  String token;
  String refreshToken;

  User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
  required this.birthDate,
  required this.token,
  required this.refreshToken,
  });

  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);

  Map<String,dynamic> toJson() => _$UserToJson(this);
}
