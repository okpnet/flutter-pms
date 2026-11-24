// 手書き(tools/entity_gen/gen.js は上書きしない)
import 'package:cost/cost.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:item/item.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(const LoggerProviderConfig());
  runApp(ExampleApp(logger: logger));
}

/// 原価 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先(品目)が別の機能にあるため、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '原価 (example)',
    modules: const [CostModule(), ItemModule()],
    entries: const [
      FeatureHostEntry('標準原価の一覧', EntityListDestination('costunit')),
      FeatureHostEntry('在庫評価額の一覧', EntityListDestination('costvaluation')),
      FeatureHostEntry('ロットの評価額', EntityListDestination('costlot')),
      FeatureHostEntry('実績の原価', EntityListDestination('costwork')),
    ],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
    darkThemeOf: (ref) => ref.watch(darkThemeProvider),
    themeModeOf: (ref) => ref.watch(themeModeProvider),
  );
}
