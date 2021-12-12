// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_by_phone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthByPhone _$AuthByPhoneFromJson(Map<String, dynamic> json) => AuthByPhone(
      phone: json['phone'] as String?,
      firebaseToken: json['firebaseToken'] as String?,
    );

Map<String, dynamic> _$AuthByPhoneToJson(AuthByPhone instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'firebaseToken': instance.firebaseToken,
    };
