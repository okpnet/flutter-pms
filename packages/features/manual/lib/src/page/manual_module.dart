import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../i18n/strings_provider.dart';
import 'package:flutter/widgets.dart' show ValueKey;
import 'manual_destinations.dart';
import 'manual_ledger_page.dart';
import 'manual_paths.dart';
import 'manual_view_page.dart';

/// マニュアル(Wiki)をアプリへ組み込むための口。
///
/// メニューは、グループ「運用と改善」に「文書」(台帳)の 1 項目を出す。ルートごとの入口は台帳に集める。
class ManualModule implements FeatureModule, MenuContributor {
  const ManualModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: ManualPaths.home,
      // id が無いときは文書の台帳(入口)、あるときはそのページ
      builder: (context, state) => state.uri.queryParameters['id'] == null
          ? const ManualLedgerPage()
          : ManualViewPage(
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
    return [
      MenuEntry(
        groupId: operationsMenuGroupId,
        groupLabel: operationsMenuGroupLabel(ref.watch(localeProvider).languageCode),
        label: s.ledger.title,
        destination: const ManualDestination(),
      ),
    ];
  }
}
