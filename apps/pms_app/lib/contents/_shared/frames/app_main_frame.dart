import 'package:app_core/app_core.dart';
import 'package:app_core/app_core_api.dart';
import 'package:app_shell/app_shell.dart';

import '../../../imports.dart';
import '../../../services/features/feature_modules.dart';
import '../../controls/route/dashboard_constant.dart';

///アプリの枠。タイトルバー・サイドバー(狭いときはハンバーガー)・ログインユーザーは`app_shell`の部品を使う。
///メニューの項目は機能(ライブラリ)の`MenuContributor`が提供し、設定・ログアウトは`app_core`へ遷移する。
///
///パターン: Facade(機能のメニュー・ユーザー・設定をまとめて枠の部品へ渡す)
class AppMainFrame extends ConsumerWidget {
  const AppMainFrame({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(appCoreStringsProvider);
    final bus = ref.read(commandBusProvider);
    final summary = ref.watch(userSummaryProvider);
    return MultiMainFrame(
      title: t.app.title,
      menu: _menu(context, ref, t),
      user: summary == null
          ? null
          : AppUser(name: summary.name, role: summary.role),
      userActions: [
        UserMenuAction(
          label: t.shell.settings,
          icon: Icons.settings_outlined,
          onSelected: () => bus.execute(const SettingsDestination()),
        ),
        UserMenuAction(
          label: t.shell.logout,
          icon: Icons.logout,
          onSelected: () => bus.execute(const LogoutDestination()),
        ),
      ],
      sidebarIconOnly: ref.watch(sidebarIconOnlyProvider),
      labels: AppShellLabels(
        openMenu: t.shell.openMenu,
        userMenu: t.shell.userMenu,
      ),
      body: body,
    );
  }

  ///機能の項目をグループ(識別子)ごとにまとめる。出現順を保つ。
  AppMenu _menu(BuildContext context, WidgetRef ref, AppCoreStrings t) {
    final bus = ref.read(commandBusProvider);
    final groups = <String, List<MenuEntry>>{};
    for (final module in featureModules) {
      if (module is! MenuContributor) continue;
      for (final entry in (module as MenuContributor).menuEntries(ref)) {
        groups.putIfAbsent(entry.groupId, () => []).add(entry);
      }
    }
    return AppMenu(
      topItems: [
        AppMenuItem(
          id: 'dashboard',
          label: t.shell.dashboard,
          icon: Icons.dashboard_outlined,
          onSelected: () => context.go(DashboardConstant.path),
        ),
      ],
      groups: [
        for (final entry in groups.entries)
          AppMenuGroup(
            id: entry.key,
            label: entry.value.first.groupLabel,
            items: [
              for (final e in entry.value)
                AppMenuItem(
                  id: '${e.groupId}/${e.label}',
                  label: e.label,
                  onSelected: () =>
                      bus.execute(TopLevelDestination(e.destination)),
                ),
            ],
          ),
      ],
    );
  }
}
