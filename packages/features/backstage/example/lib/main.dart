import 'package:backstage/backstage.dart';
import 'package:backstage/backstage_api.dart';
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

/// 入口を通った状態から始める(example では、ログインページの入口を使わずにページを確認する)。
class _Unlocked extends BackstageUnlock {
  @override
  bool build() => true;
}

/// 裏設定を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
///
/// 保存先はメモリ上([InMemoryBackstageStore])。アセットの既定値の代わりに、見本の既定値を使う。
/// 起動時の値(`--dart-define`)も、本番と同じ名前で効く(`GRAPHQL_URL`・`POCKETBASE_URL`・`LOG_LEVEL` など)。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger, this.store});

  final ILoggerProvider logger;
  final IBackstageStore? store;

  @override
  Widget build(BuildContext context) {
    final backend = store ?? InMemoryBackstageStore();
    return FeatureHost(
      title: '裏設定 (example)',
      modules: const [BackstageModule()],
      entries: const [FeatureHostEntry('裏設定のページ', BackstageDestination())],
      logger: logger,
      overrides: [
        themeLoggerProvider.overrideWithValue(logger),
        ...backstageOverrides(
          BackstageBoot(
            store: backend,
            stored: BackstageSettings.tryParse(
              backend is InMemoryBackstageStore ? backend.value : null,
            ),
            launch: const BackstageLaunch(
              graphqlUrl: String.fromEnvironment('GRAPHQL_URL'),
              pocketbaseUrl: String.fromEnvironment('POCKETBASE_URL'),
              maintenanceUrl: String.fromEnvironment('MAINTENANCE_URL'),
              logLevel: String.fromEnvironment('LOG_LEVEL'),
            ).toSettings(),
            defaults: const BackstageSettings(
              isChangeUserImage: false,
              logLevel: 'info',
              sidebarIconOnly: false,
            ),
          ),
        ),
        backstageUnlockProvider.overrideWith(_Unlocked.new),
      ],
      themeOf: (ref) => ref.watch(lightThemeProvider),
    );
  }
}
