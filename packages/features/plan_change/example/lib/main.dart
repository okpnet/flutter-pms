import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:item/item.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:plan_change/plan_change.dart';
import 'package:theme_lib/theme_lib.dart';
import 'package:work_record/work_record.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 計画変更 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体(品目・コンテナ)は、その機能も一緒に載せて選択肢を引けるようにしている。
/// 取得元はサンプル(メモリ上)。未処置一覧の行のボタンから、操作の入力画面を開いて確認できる。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '計画変更 (example)',
    modules: const [PlanChangeModule(), ItemModule(), WorkRecordModule()],
    entries: const [
      FeatureHostEntry('計画変更の履歴', EntityListDestination('planchange')),
      FeatureHostEntry('未処置一覧', EntityListDestination('cancelopen')),
    ],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
    darkThemeOf: (ref) => ref.watch(darkThemeProvider),
    themeModeOf: (ref) => ref.watch(themeModeProvider),
  );
}
