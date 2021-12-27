import 'package:json_annotation/json_annotation.dart';
part 'auth_by_phone_model.g.dart';
///Модель данных для запроса на авторизацию через телефон
@JsonSerializable()
class AuthByPhoneRequest {

  final String? phone;
  final String? firebaseToken;

  AuthByPhoneRequest({
    required this.phone,
    required this.firebaseToken,
  });

  factory AuthByPhoneRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthByPhoneRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthByPhoneRequestToJson(this);
}
