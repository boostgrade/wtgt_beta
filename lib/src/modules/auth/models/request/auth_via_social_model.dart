import 'package:json_annotation/json_annotation.dart';

part 'auth_via_social_model.g.dart';
///Модель данных здля запроса на авторизацию через соцсети
@JsonSerializable()
class AuthViaSocialRequest{

  final String? token;

  AuthViaSocialRequest({required this.token,});

  factory AuthViaSocialRequest.fromJson(Map<String,dynamic> json) => _$AuthViaSocialRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthViaSocialRequestToJson(this);
}