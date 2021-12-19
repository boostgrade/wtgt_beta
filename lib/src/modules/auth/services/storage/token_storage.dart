import 'dart:io';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Класс необходим для сохранения токена авторизации
class AuthTokenStorage {
  static const String boxName = 'tokenStorage';
  static const String _boxKey = 'token';

  /// Метод создающий хранилище
  Future<Box<String>> initStorage() async {
    var _box = await Hive.openBox<String>(boxName);

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
