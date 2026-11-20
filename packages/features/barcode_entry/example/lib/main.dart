import 'package:barcode_entry/barcode_entry.dart';
import 'package:barcode_entry/barcode_entry_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// バーコード実績登録を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: 'バーコード (example)',
    modules: const [BarcodeEntryModule()],
    entries: const [
      FeatureHostEntry('リーディングトップ', BarcodeEntryDestination()),
      FeatureHostEntry(
        '作業指示 WO-2610-001 を読み込み済みで開く',
        BarcodeEntryDestination(symbol: 'WO-2610-001'),
      ),
    ],
    logger: logger,
    overrides: [
      themeLoggerProvider.overrideWithValue(logger),
      // 処理待ち(まとめて登録)・担当者の読み取りは、example では有効にしない(既定の false のまま)。
      // 有効にすると登録の通信がまとめて登録のときに移るため、通信できる環境での確認が済んでから、アプリ側で書く
      // (条件は `batchQueueProvider` のコメントと `issue/20261120_0001.md`)。
      // batchQueueProvider.overrideWithValue(true),
      // requireOperatorProvider.overrideWithValue(true),
    ],
    themeOf: (ref) => ref.watch(lightThemeProvider),
    darkThemeOf: (ref) => ref.watch(darkThemeProvider),
    themeModeOf: (ref) => ref.watch(themeModeProvider),
  );
}
