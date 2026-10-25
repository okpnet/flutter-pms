import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:organization/organization.dart';
import 'package:production_process/production_process.dart';
import 'package:quality/quality.dart';
import 'package:quality_common/quality_common.dart';
import 'package:sales/sales.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 品質管理 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '品質管理 (example)',
    modules: const [
      QualityModule(),
      OrganizationModule(),
      ProductionProcessModule(),
      QualityCommonModule(),
      SalesModule(),
    ],
    entries: const [
      FeatureHostEntry('異常', EntityListDestination('complaint')),
      FeatureHostEntry('注文苦情', EntityListDestination('corder')),
      FeatureHostEntry('工程苦情', EntityListDestination('cproc')),
      FeatureHostEntry('設備苦情', EntityListDestination('cequip')),
      FeatureHostEntry('注文リスク', EntityListDestination('orderrisk')),
      FeatureHostEntry('受注明細リスク', EntityListDestination('orderdetailrisk')),
      FeatureHostEntry('工程リスク', EntityListDestination('taskrisk')),
      FeatureHostEntry('監査標準', EntityListDestination('auditstd')),
      FeatureHostEntry('監査チーム', EntityListDestination('auditteam')),
      FeatureHostEntry('監査', EntityListDestination('audit')),
    ],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
