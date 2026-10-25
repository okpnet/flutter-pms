import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:organization/organization.dart';
import 'package:quality/quality.dart';
import 'package:quality_common/quality_common.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 品質共通 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '品質共通 (example)',
    modules: const [QualityCommonModule(), OrganizationModule(), QualityModule()],
    entries: const [FeatureHostEntry('異常処置', EntityListDestination('disposal')), FeatureHostEntry('再発防止処置', EntityListDestination('recur')), FeatureHostEntry('処置監視', EntityListDestination('obsdisp')), FeatureHostEntry('再発防止監視', EntityListDestination('obsprev')), FeatureHostEntry('リスク', EntityListDestination('risk')), FeatureHostEntry('監査標準項目', EntityListDestination('auditstdcheck'))],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
