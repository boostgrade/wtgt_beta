import 'package:json_annotation/json_annotation.dart';
part 'user_response_model.g.dart';
@JsonSerializable()
class UserResponse {///Модель пользователя, возвращаемого из response
  final int id;
  final String name;
  final String lastName;
  final String phone;
  final DateTime birthDate;

  UserResponse({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.birthDate,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
