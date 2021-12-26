import 'package:json_annotation/json_annotation.dart';
part 'token_response_model.g.dart';
///Модель токена,возврщаемого из response
@JsonSerializable()
class TokenResponse {
  String token;
  String refreshToken;

  TokenResponse({
    required this.token,
    required this.refreshToken,
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TokenResponseToJson(this);
}
