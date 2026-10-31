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
  runApp(EntryApp(logger: logger));
}

/// 実績登録専用アプリ。バーコード実績登録の機能だけを載せる(配線は `pms_app` と同じ `FeatureHost`)。
///
/// 取得元は暫定でメモリ上のサンプル。GraphQL 版と認証(PocketBase)は、導入後にここで差し込む
/// (`scanGatewayProvider` の上書き、`pageSessionMediatorProvider` の上書き)。
class EntryApp extends StatelessWidget {
  const EntryApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: 'PMS 実績登録',
    modules: const [BarcodeEntryModule()],
    entries: const [FeatureHostEntry('バーコード', BarcodeEntryDestination())],
    logger: logger,
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
