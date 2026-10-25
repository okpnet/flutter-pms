import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:sales/sales.dart';
import 'package:sales/sales_api.dart';
import 'package:shared_master/shared_master.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 営業 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '営業 (example)',
    modules: const [SalesModule(), SharedMasterModule()],
    entries: const [FeatureHostEntry('顧客台帳', CustomerListDestination()), FeatureHostEntry('顧客を選択', CustomerPickerDestination()), FeatureHostEntry('受注', EntityListDestination('order'))],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
