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
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
