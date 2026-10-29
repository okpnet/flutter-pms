import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:production_plan/production_plan.dart';
import 'package:production_plan/production_plan_api.dart';
import 'package:production_process/production_process.dart';
import 'package:purchasing/purchasing.dart';
import 'package:sales/sales.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 生産計画 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '生産計画 (example)',
    modules: const [ProductionPlanModule(), ProductionProcessModule(), PurchasingModule(), SalesModule()],
    entries: const [FeatureHostEntry('資材所要計算', MrpDestination()), FeatureHostEntry('資材計画', EntityListDestination('resplan')), FeatureHostEntry('生産引き当て予約', EntityListDestination('prodrez')), FeatureHostEntry('購買引き当て予約', EntityListDestination('purrez'))],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger), mrpGatewayProvider.overrideWithValue(DemoMrpGateway())],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
