import 'package:document_settings/document_settings.dart';
import 'package:document_settings/document_settings_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 承認スタンプ・PDF の設定を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
///
/// [isAdmin] が true のとき、変更・保存ができる(false は閲覧のみ)。取得元はメモリ上(最初は標準の設定)。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger, this.isAdmin = true});

  final ILoggerProvider logger;
  final bool isAdmin;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '承認スタンプ・PDF の設定 (example)',
    modules: const [DocumentSettingsModule()],
    entries: const [
      FeatureHostEntry('承認スタンプ・PDF の設定', DocumentSettingsDestination()),
    ],
    logger: logger,
    overrides: [
      themeLoggerProvider.overrideWithValue(logger),
      documentSettingsIsAdminProvider.overrideWithValue(isAdmin),
    ],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
