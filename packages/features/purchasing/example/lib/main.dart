import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:item/item.dart';
import 'package:production_plan/production_plan.dart';
import 'package:purchasing/purchasing.dart';
import 'package:system/system.dart';
import 'package:work_record/work_record.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 購買 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '購買 (example)',
    modules: const [PurchasingModule(), ItemModule(), ProductionPlanModule(), SystemModule(), WorkRecordModule()],
    entries: const [FeatureHostEntry('非計上', EntityListDestination('unrec')), FeatureHostEntry('発注', EntityListDestination('purchase')), FeatureHostEntry('受入実績', EntityListDestination('purchaserec'))],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
