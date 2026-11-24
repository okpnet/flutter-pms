import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'announcement_destinations.dart';
import 'announcement_list_page.dart';
import 'announcement_paths.dart';

/// 通知をアプリへ組み込む口。入口はメニューではなく、ダッシュボードの未読通知(`AnnouncementBanner`)の「すべて見る」。
class AnnouncementModule implements FeatureModule {
  const AnnouncementModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(path: AnnouncementPaths.list, builder: (context, state) => const AnnouncementListPage()),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) => switch (destination) {
    AnnouncementListDestination() => AnnouncementPaths.list,
    _ => null,
  };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}
