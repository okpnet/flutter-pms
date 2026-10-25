import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ロガーは非同期で生成するため、runApp の前に用意する
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );

  runApp(
    ProviderScope(
      overrides: [
        loggerProvider.overrideWithValue(logger),
        // theme_lib / flgtable_lib(顧客台帳)が使うテーマ側のロガー
        themeLoggerProvider.overrideWithValue(logger),
        ...appOverrides,
      ],
      child: const PmsApp(),
    ),
  );
}
