// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      id: json['id'] as int,
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      phone: json['phone'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'birthDate': instance.birthDate.toIso8601String(),
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
