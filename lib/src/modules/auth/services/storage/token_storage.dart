import 'dart:io';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Класс необходим для сохранения токена авторизации

class AuthTokenStorage {
  /// Метод создающий хранилище
  void _createStorage(String boxName) async {
    var _box = await Hive.openBox<dynamic>(boxName);
    _box.close();
  }

  /// Метод помещающий данные в хранилище
  void _saveToken(String boxName, String boxKey, dynamic boxData) async {
    var _box = await Hive.openBox<dynamic>(boxName);
    await _box.put(boxKey, boxData);
    _box.close();
  }

  /// Метод добавляющий данные в хранилище
  void _addToStorage(String boxName, dynamic boxData) async {
    var _box = await Hive.openBox<dynamic>(boxName);
    await _box.add(boxData);
    _box.close();
  }

  /// Метод с помощью которого можно получить данные(токен) из хранилища
  void _getToken(String boxName, dynamic boxData) async {
    var _box = await Hive.openBox<dynamic>(boxName);
    _box.get(boxData);
    _box.close();
  }
}
