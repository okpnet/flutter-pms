import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:shared_master/shared_master.dart';
import 'package:shared_master/shared_master_api.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 共有マスタ を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '共有マスタ (example)',
    modules: const [SharedMasterModule()],
    entries: const [
      FeatureHostEntry('配送区分台帳', ShippingKindListDestination()),
      FeatureHostEntry('配送区分の登録', ShippingKindEditDestination()),
    ],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
