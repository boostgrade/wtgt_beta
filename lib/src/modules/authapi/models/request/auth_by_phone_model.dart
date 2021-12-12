
import 'package:json_annotation/json_annotation.dart';
part 'auth_by_phone_model.g.dart';

@JsonSerializable()
class AuthByPhone{
  String? phone;
  String? firebaseToken;

  AuthByPhone({required this.phone, required this.firebaseToken});

  factory AuthByPhone.fromJson(Map<String,dynamic> json) => _$AuthByPhoneFromJson(json);
}