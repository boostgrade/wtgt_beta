import 'dart:io';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppStorage {
  AppStorage() {
    Hive.initFlutter();
  }

  void createBox(boxName) async {
    var box = await Hive.openBox<dynamic>(boxName);
    box.close();
  }

  void putToBox(boxName, boxKey, boxData) async {
    var box = await Hive.openBox<dynamic>(boxName);
    await box.put(boxKey, boxData);
    box.close();
  }

  void addToBox(boxName, boxData) async {
    var box = await Hive.openBox<dynamic>(boxName);
    await box.add(boxData);
    box.close();
  }

  void getFromBox(boxName, boxData) async {
    var box = await Hive.openBox<dynamic>(boxName);
    box.get(boxData);
    box.close();
  }
}
