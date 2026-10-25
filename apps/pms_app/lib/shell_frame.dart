import 'package:app_core/app_core.dart';
import 'package:app_core/app_core_api.dart';
import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app.dart';

/// トップメニューのグループの並びとアイコン(Html のメニューの並び)。
/// ここに無いグループは、最後に並べる。
const List<(String, IconData)> _groupOrder = [
  ('resource', Icons.inventory_2_outlined),
  ('system', Icons.storage_outlined),
  ('item', Icons.category_outlined),
  ('production_process', Icons.precision_manufacturing_outlined),
  ('sales', Icons.receipt_long_outlined),
  ('purchasing', Icons.local_shipping_outlined),
  ('production_plan', Icons.event_note_outlined),
  ('work_record', Icons.build_outlined),
  ('quality_common', Icons.warning_amber_outlined),
  ('quality_document', Icons.description_outlined),
  ('quality', Icons.verified_outlined),
  ('organization', Icons.business_outlined),
];

/// アプリの枠(マルチメインフレーム): タイトルバー・サイドバー(モバイルはハンバーガー)・メイン。
///
/// メニューの項目は、各機能が提供する([MenuContributor])。選んだ項目は GoRouter の `go` で開く
/// (枠の中の画面を入れ替える)。ログインしていない(ユーザーが無い)ときは、メニューもユーザーも出さない。
class ShellFrame extends ConsumerWidget {
  const ShellFrame({super.key, required this.location, required this.child});

  /// いま表示している画面のパス(選択中の項目の判定に使う)。
  final String location;
  final Widget child;

  /// [destination] を所有する機能のパス。どの機能も所有しなければ null。
  static String? _locationOf(PageDestination<Object?> destination) {
    for (final module in featureModules) {
      final location = module.locationOf(destination);
      if (location != null) return location;
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(appCoreStringsProvider);
    final user = ref.watch(userSummaryProvider);
    final iconOnly = ref.watch(sidebarIconOnlyProvider);

    // パスに絞り込み(?)を含む項目(顧客台帳・外部供給者台帳)は、絞り込みまで一致したときだけ選択中にする
    bool isSelected(String path) =>
        location == path ||
        (path != '/' && !path.contains('?') && location.startsWith('$path/'));
    final bus = ref.read(commandBusProvider);
    // メニューの項目は CommandBus で開く(積まずに、枠の中の画面を入れ替える)
    void open(PageDestination<Object?> destination) =>
        bus.execute(TopLevelDestination(destination));

    // 項目を集めて、グループごとにまとめる(同じ groupId は1つのグループ)
    final groups = <String, (String, List<AppMenuItem>)>{};
    for (final module in featureModules) {
      if (module is! MenuContributor) continue;
      for (final entry in (module as MenuContributor).menuEntries(ref)) {
        final path = _locationOf(entry.destination);
        if (path == null) continue;
        final group = groups.putIfAbsent(
          entry.groupId,
          () => (entry.groupLabel, <AppMenuItem>[]),
        );
        group.$2.add(
          AppMenuItem(
            id: '${entry.groupId}:$path',
            label: entry.label,
            selected: isSelected(path),
            onSelected: () => open(entry.destination),
          ),
        );
      }
    }
    int rank(String id) {
      final i = _groupOrder.indexWhere((g) => g.$1 == id);
      return i < 0 ? _groupOrder.length : i;
    }

    final ids = groups.keys.toList()
      ..sort((a, b) => rank(a).compareTo(rank(b)));
    final menu = AppMenu(
      topItems: [
        AppMenuItem(
          id: 'home',
          label: t.shell.dashboard,
          icon: Icons.home_outlined,
          selected: location == '/',
          onSelected: () => context.go('/'),
        ),
      ],
      groups: [
        for (final id in ids)
          AppMenuGroup(
            id: id,
            label: groups[id]!.$1,
            icon: _groupOrder
                .where((g) => g.$1 == id)
                .map((g) => g.$2)
                .firstOrNull,
            items: groups[id]!.$2,
          ),
      ],
    );

    return MultiMainFrame(
      title: t.app.title,
      menu: menu,
      user: user == null ? null : AppUser(name: user.name, role: user.role),
      userActions: [
        UserMenuAction(
          label: t.shell.settings,
          icon: Icons.settings_outlined,
          onSelected: () => open(const SettingsDestination()),
        ),
        UserMenuAction(
          label: t.shell.logout,
          icon: Icons.logout,
          onSelected: () {
            ref.read(userSummaryProvider.notifier).logout();
            open(const LogoutDestination());
          },
        ),
      ],
      sidebarIconOnly: iconOnly,
      labels: AppShellLabels(
        openMenu: t.shell.openMenu,
        userMenu: t.shell.userMenu,
      ),
      body: child,
    );
  }
}
