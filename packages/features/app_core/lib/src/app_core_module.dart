import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_core_destinations.dart';
import 'app_core_paths.dart';
import 'pages/app_core_pages.dart';

/// アプリの基盤(ブート・ダッシュボード・エラー・設定・ログアウト)をアプリへ組み込むための口。
///
/// ログイン(Keycloak)は、認証を導入するときに追加する。
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
      path: AppCorePaths.logout,
      builder: (context, state) => const LogoutPage(),
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
        DashboardDestination() => AppCorePaths.dashboard,
        SettingsDestination() => AppCorePaths.settings,
        LogoutDestination() => AppCorePaths.logout,
        ErrorDestination(:final message) => AppCorePaths.errorWith(message),
        _ => null,
      };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}
