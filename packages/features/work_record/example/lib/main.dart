import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:production_plan/production_plan.dart';
import 'package:work_record/work_record.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 作業実績 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '作業実績 (example)',
    modules: const [WorkRecordModule(), ProductionPlanModule()],
    entries: const [FeatureHostEntry('コンテナ', EntityListDestination('container')), FeatureHostEntry('引き当て', EntityListDestination('invapply')), FeatureHostEntry('引き当て予約', EntityListDestination('invreq')), FeatureHostEntry('成績書', EntityListDestination('certificate')), FeatureHostEntry('作業実績', EntityListDestination('workrec'))],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
