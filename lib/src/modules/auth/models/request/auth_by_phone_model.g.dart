// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_by_phone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthByPhoneRequest _$AuthByPhoneRequestFromJson(Map<String, dynamic> json) =>
    AuthByPhoneRequest(
      phone: json['phone'] as String?,
      firebaseToken: json['firebaseToken'] as String?,
    );

Map<String, dynamic> _$AuthByPhoneRequestToJson(AuthByPhoneRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'firebaseToken': instance.firebaseToken,
    };
