import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/widgets.dart' show ValueKey;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/approval_data.dart';
import '../i18n/labels.dart';
import '../i18n/strings_provider.dart';
import 'approval_destinations.dart';
import 'approval_list_page.dart';
import 'approval_paths.dart';

/// 承認一覧をアプリへ組み込む口。メニューは、承認が要る機能のグループ(品質管理文書・営業・購買・品質共通)の末尾に
/// 「承認一覧」を 1 項目ずつ出す。この機能は、`featureModules` の末尾に置く(グループの末尾に並ぶため)。
class ApprovalModule implements FeatureModule, MenuContributor {
  const ApprovalModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: '${ApprovalPaths.base}/:menu',
      builder: (context, state) => ApprovalListPage(
        key: ValueKey(state.pathParameters['menu']),
        menu: state.pathParameters['menu'] ?? ApprovalMenus.menus.first,
      ),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) => switch (destination) {
    ApprovalListDestination(:final menu) => ApprovalPaths.of(menu),
    _ => null,
  };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    final s = ref.watch(approvalStringsProvider);
    return [
      for (final menu in ApprovalMenus.menus)
        MenuEntry(
          groupId: menu,
          groupLabel: approvalMenuLabel(s, menu),
          label: s.menuLabel,
          destination: ApprovalListDestination(menu),
        ),
    ];
  }
}
