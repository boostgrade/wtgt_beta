import 'dart:io';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Класс необходим для сохранения токена авторизации
class AuthTokenStorage {
  static const String boxName = 'tokenStorage';
  static const String boxKey = 'token';

  /// Метод создающий хранилище
  Future initStorage() async {
    var _box = await Hive.openBox<dynamic>(boxName);

    return _box;
  }

  /// Метод помещающий данные в хранилище
  void saveToken(String token) async {
    var _box = await initStorage();
    await _box.put(boxKey, token);
    _box.close();
  }

  /// Метод добавляющий данные в хранилище
  void addToStorage(dynamic boxData) async {
    var _box = await initStorage();
    await _box.add(boxData);
    _box.close();
  }

  /// Метод с помощью которого можно получить данные(токен) из хранилища
  Future getToken(dynamic boxData) async {
    var _box = await initStorage();
    var token = _box.get(boxData);

    return token;
  }
}
