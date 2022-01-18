import 'package:json_annotation/json_annotation.dart';

part 'register.g.dart';

@JsonSerializable()
class RegisterRequest{

  String? name;
  String? lastName;
  String? phone;
  DateTime? birthDate;

  RegisterRequest({
    required this.name,
    required this.lastName,
    required this.birthDate,
    required this.phone,
  });

  factory RegisterRequest.fromJson(Map<String,dynamic> json) => _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}