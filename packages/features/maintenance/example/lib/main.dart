import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:maintenance/maintenance.dart';
import 'package:maintenance/maintenance_api.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 確認用: 3回目の確認でメンテナンスが終わる(それまではメンテナンス中)。
class DemoMaintenanceChecker implements IMaintenanceChecker {
  int calls = 0;

  @override
  Future<MaintenanceStatus> check() async {
    calls++;
    if (calls >= 3) return MaintenanceStatus.available;
    return demoStatus;
  }
}

final demoStatus = MaintenanceStatus(
  isUnderMaintenance: true,
  message: 'システムの更新を行っています。',
  startAt: DateTime(2026, 10, 27, 1),
  endAt: DateTime(2026, 10, 27, 3),
);

class _UnderMaintenance extends MaintenanceStatusNotifier {
  @override
  MaintenanceStatus build() => demoStatus;
}

/// メンテナンス を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: 'メンテナンス (example)',
    modules: const [MaintenanceModule()],
    entries: const [FeatureHostEntry('メンテナンス中のページ', MaintenanceDestination())],
    logger: logger,
    overrides: [
      themeLoggerProvider.overrideWithValue(logger),
      maintenanceCheckerProvider.overrideWith(
        (ref) => DemoMaintenanceChecker(),
      ),
      maintenanceStatusProvider.overrideWith(_UnderMaintenance.new),
    ],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
