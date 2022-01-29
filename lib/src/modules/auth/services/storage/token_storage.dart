import 'dart:io';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void appInitHive() async {
  await Hive.initFlutter();
}
