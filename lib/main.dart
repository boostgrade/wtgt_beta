import 'package:where_to_go_today/src/app/ui/app_store.dart';
import 'package:where_to_go_today/src/di/app_dependency.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/app/ui/app.dart';

void main() async {
  final globalDeps = AppDependencies();
  await globalDeps.init();
  await Hive.initFlutter();

  runApp(
    Provider(
      create: (ctx) => globalDeps,
      child: App(
        store: AppStore(
          globalDeps.settingsController,
          globalDeps.errorHandler,
        ),
      ),
    ),
  );
}
