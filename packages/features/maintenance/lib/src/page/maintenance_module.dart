import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'maintenance_destinations.dart';
import 'maintenance_page.dart';
import 'maintenance_paths.dart';

/// メンテナンスページをアプリへ組み込むための口。
///
/// ルートは、アプリの枠(サイドバー・タイトルバーを持つ `ShellRoute`)の外に置くこと
/// (メンテナンス中は、ほかのページへのリンクを一切出さないため)。
/// メニューの項目は持たない。
class MaintenanceModule implements FeatureModule {
  const MaintenanceModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: MaintenancePaths.maintenance,
      builder: (context, state) => const MaintenancePage(),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        MaintenanceDestination() => MaintenancePaths.maintenance,
        _ => null,
      };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}
