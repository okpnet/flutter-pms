import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_core_destinations.dart';
import 'app_core_paths.dart';
import 'pages/app_core_pages.dart';

/// アプリの基盤(ブート・ダッシュボード・エラー・設定)をアプリへ組み込むための口。
class AppCoreModule implements FeatureModule {
  const AppCoreModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: AppCorePaths.boot,
      builder: (context, state) => const BootPage(),
    ),
    GoRoute(
      path: AppCorePaths.dashboard,
      builder: (context, state) => const DashboardPage(),
    ),
    GoRoute(
      path: AppCorePaths.settings,
      builder: (context, state) => const SettingsPage(),
    ),
    GoRoute(
      path: AppCorePaths.error,
      builder: (context, state) =>
          ErrorPage(message: state.uri.queryParameters['message']),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        BootDestination() => AppCorePaths.boot,
        DashboardDestination() => AppCorePaths.dashboard,
        SettingsDestination() => AppCorePaths.settings,
        ErrorDestination(:final message) => AppCorePaths.errorWith(message),
        _ => null,
      };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}
