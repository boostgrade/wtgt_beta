import 'package:json_annotation/json_annotation.dart';

part 'register.g.dart';

@JsonSerializable()
class RegisterResponse{

  String name;
  String lastName;
  String phone;
  DateTime birthDate;

  RegisterResponse({
    required this.name,
    required this.lastName,
    required this.birthDate,
    required this.phone,
  });

  factory RegisterResponse.fromJson(Map<String,dynamic> json) => _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}