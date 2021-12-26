import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Класс необходим для сохранения токена авторизации
class AuthSecureTokenStorage {
  final tokenStorage = const FlutterSecureStorage();
  static const String _storageName = 'tokenStorage';

  /// Метод позволяющий сохранить токен в защищенное хранилище
  void secureSave(String token) async {
    await tokenStorage.write(key: _storageName, value: token);
  }

  /// Метод позволяющий читать токен из защищенного хранилища
  Future<String?> readSecureToken() async {
    String? value = await tokenStorage.read(key: _storageName);

    return value;
  }
}
