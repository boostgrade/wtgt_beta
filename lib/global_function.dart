import 'package:hive_flutter/hive_flutter.dart';
import 'package:where_to_go_today/src/modules/auth/storage/token_storage.dart';

/// Инициализация хранилища Hive
Future<void> iniHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TokenStorageAdapter());
}
