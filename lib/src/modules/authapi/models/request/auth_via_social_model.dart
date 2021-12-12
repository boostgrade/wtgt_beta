
import 'package:json_annotation/json_annotation.dart';

part 'auth_via_social_model.g.dart';

@JsonSerializable()
class AuthViaSocial{
  String token;

  AuthViaSocial({required this.token});

  factory AuthViaSocial.fromJson(Map<String,dynamic> json) => _$AuthViaSocialFromJson(json);
}