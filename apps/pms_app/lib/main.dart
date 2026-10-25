import 'dart:io';

import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:settings_keeper/settings_keeper.dart';
import 'package:theme_lib/theme_lib.dart';

import 'app.dart';

/// 設定の保存先のフォルダ。Windows は `%APPDATA%\pms_app`、そのほかは `~/.pms_app`。
Directory settingsDirectory() {
  final env = Platform.environment;
  final base = env['APPDATA'] ?? env['HOME'] ?? Directory.systemTemp.path;
  final name = env['APPDATA'] != null ? 'pms_app' : '.pms_app';
  return Directory('$base${Platform.pathSeparator}$name');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ロガーは非同期で生成するため、runApp の前に用意する
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );

  final container = ProviderContainer(
    overrides: [
      loggerProvider.overrideWithValue(logger),
      // theme_lib / flgtable_lib(顧客台帳)が使うテーマ側のロガー
      themeLoggerProvider.overrideWithValue(logger),
      // 使用言語の既定は実行環境(OS)の言語。設定で変更する
      localeProvider.overrideWith(SystemLocaleNotifier.new),
      // 設定の保存先(アプリが決める。ライブラリは保存先を知らない)
      settingsStorageProvider.overrideWithValue(
        FileSettingsStorage(settingsDirectory()),
      ),
      ...appOverrides,
    ],
  );

  // 保存された設定を復元してから、変更を保存し始める(失敗してもアプリは標準の設定で起動する)
  await container
      .read(settingsKeeperProvider)
      .restore(container.read(userSettingsOriginatorProvider));
  container.read(userSettingsAutoSaveProvider);

  runApp(UncontrolledProviderScope(container: container, child: const PmsApp()));
}
