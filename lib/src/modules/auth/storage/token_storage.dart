import 'package:hive/hive.dart';
part 'token_storage.g.dart';

@HiveType(typeId: 1, adapterName: 'TokenStorageAdapter')
class TokenStorage extends HiveObject {
  @HiveField(0)
  final String token;

  @HiveField(1)
  final String refreshToken;

  TokenStorage({
    required this.token,
    required this.refreshToken,
  });
}
