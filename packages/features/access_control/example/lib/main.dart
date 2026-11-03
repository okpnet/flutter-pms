import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:access_control/access_control.dart';
import 'package:organization/organization.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// アクセス管理 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: 'アクセス管理 (example)',
    modules: const [AccessControlModule(), OrganizationModule()],
    entries: const [FeatureHostEntry('アクセスパス', EntityListDestination('accesspath')), FeatureHostEntry('部署のアクセスパス', EntityListDestination('deptaccesspath')), FeatureHostEntry('担当者のアクセスパス許可', EntityListDestination('staffaccesspermission')), FeatureHostEntry('担当者の実効アクセスパス', EntityListDestination('effectiveaccesspath'))],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
