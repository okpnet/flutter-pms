import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'backstage_destinations.dart';
import 'backstage_paths.dart';
import 'pages/backstage_page.dart';

/// 裏設定をアプリへ組み込むための口。
///
/// ルートは、アプリの枠(サイドバー・タイトルバーを持つ `ShellRoute`)の外に置くこと
/// (ほかのページへのリンクを持たないため。`maintenance` と同じ)。メニューの項目は持たない。
/// 入口の判定・値の差し込みは `backstageOverrides`(アプリ)で行う。
class BackstageModule implements FeatureModule {
  const BackstageModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: BackstagePaths.backstage,
      builder: (context, state) => const BackstagePage(),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        BackstageDestination() => BackstagePaths.backstage,
        _ => null,
      };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}
