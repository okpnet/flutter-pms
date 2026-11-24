import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/manual_providers.dart';
import '../i18n/strings_provider.dart';
import 'package:flutter/widgets.dart' show ValueKey;
import 'manual_destinations.dart';
import 'manual_paths.dart';
import 'manual_view_page.dart';

/// マニュアル(Wiki)をアプリへ組み込むための口。
///
/// メニューは、グループ「品質管理文書」に、ルートのページごとに 1 項目を出す(ルートは複数作れる)。
/// ルートが無い(読み込み前・空)ときは、「マニュアル」の 1 項目だけを出す。
class ManualModule implements FeatureModule, MenuContributor {
  const ManualModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: ManualPaths.home,
      builder: (context, state) => ManualViewPage(
        // ページが変わったら編集の状態も作り直す
        key: ValueKey(state.uri.queryParameters['id']),
        pageId: state.uri.queryParameters['id'],
        startEditing: state.uri.queryParameters['edit'] == '1',
      ),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        ManualDestination(:final pageId?, :final edit) => ManualPaths.pageOf(
          pageId,
          edit: edit,
        ),
        ManualDestination() => ManualPaths.home,
        _ => null,
      };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    final s = ref.watch(manualStringsProvider);
    final roots = ref.watch(manualProvider.select((m) => m.wiki.roots));
    if (roots.isEmpty) {
      return [
        MenuEntry(
          groupId: operationsMenuGroupId,
          groupLabel: operationsMenuGroupLabel(ref.watch(localeProvider).languageCode),
          label: s.menuManual,
          destination: const ManualDestination(),
        ),
      ];
    }
    return [
      for (final r in roots)
        MenuEntry(
          groupId: operationsMenuGroupId,
          groupLabel: operationsMenuGroupLabel(ref.watch(localeProvider).languageCode),
          label: r.title,
          destination: ManualDestination(pageId: r.id),
        ),
    ];
  }
}
