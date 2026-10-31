import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:item/item.dart';
import 'package:production_process/production_process.dart';
import 'package:shared_master/shared_master.dart';
import 'package:system/system.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 品目 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '品目 (example)',
    modules: const [ItemModule(), ProductionProcessModule(), SharedMasterModule(), SystemModule()],
    entries: const [FeatureHostEntry('品目区分', EntityListDestination('itemkind')), FeatureHostEntry('HSコード', EntityListDestination('hscode')), FeatureHostEntry('品目', EntityListDestination('item')), FeatureHostEntry('品目大きさ区分', EntityListDestination('itemsizekind')), FeatureHostEntry('品目仕入先', EntityListDestination('itemsupplier')), FeatureHostEntry('品目の在庫', EntityListDestination('itemonhand'))],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
