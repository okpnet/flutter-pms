import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:organization/organization.dart';
import 'package:resource/resource.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 会社情報 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '会社情報 (example)',
    modules: const [OrganizationModule(), ResourceModule()],
    entries: const [FeatureHostEntry('会社情報', EntityListDestination('company')), FeatureHostEntry('事業所', EntityListDestination('site')), FeatureHostEntry('部署区分', EntityListDestination('deptkind')), FeatureHostEntry('部署', EntityListDestination('department')), FeatureHostEntry('作業者', EntityListDestination('staff')), FeatureHostEntry('承認パターン', EntityListDestination('approvalpattern'))],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
