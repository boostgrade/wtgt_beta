import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Класс необходим для сохранения токена авторизации
class AuthTokenStorage {
  static const String _boxName = 'tokenStorage';
  static const String _boxKey = 'token';

  /// Метод создающий хранилище
  Future<Box<String>> initStorage() async {
    var _box = await Hive.openBox<String>(_boxName);

    return _box;
  }

  /// Метод помещающий данные в хранилище
  void saveToken(String token) async {
    var _box = await initStorage();
    await _box.put(_boxKey, token);
    _box.close();
  }

  /// Метод с помощью которого можно получить данные(токен) из хранилища
  Future<String?> getToken() async {
    var _box = await initStorage();
    var token = _box.get(_boxKey);

    return token;
  }
}

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
