import 'package:app_core/app_core.dart';
import 'package:app_core/app_core_api.dart';
import 'package:app_shell/app_shell.dart';
import 'package:auth_files/auth_files_api.dart';
import 'package:user_profile/user_profile.dart';
import 'package:user_profile/user_profile_api.dart';

import '../../../imports.dart';
import '../../../services/access/menu_access.dart';
import '../../../services/features/feature_error.dart' show featureLocationOf;
import '../../../services/features/feature_modules.dart';
import '../../../services/session/pocketbase_user_identity.dart'
    show userIdentitySourceProvider;
import '../../../services/graphql/graphql_overrides.dart'
    show pocketbaseEnabledProvider;
import '../../controls/route/dashboard_constant.dart';
import 'menu_icons.dart';

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
    // 顔写真(user_profile)。取得中・取得できないときは写真なし(名前の頭文字)にして、枠の表示は止めない
    final photo = ref.watch(userAvatarProvider).value?.image;
    return MultiMainFrame(
      title: t.app.title,
      menu: _menu(context, ref, t),
      user: summary == null
          ? null
          : AppUser(name: summary.name, role: summary.role, photo: photo),
      userActions: [
        UserMenuAction(
          label: ref.watch(userProfileStringsProvider).menu.myImage,
          icon: Icons.account_circle_outlined,
          onSelected: () => bus.execute(const MyImageDestination()),
        ),
        // システムメニュー(管理者だけ。承認スタンプと PDF の設定・文書階層・レポートなどの入口)
        if (_isAdmin(ref))
          UserMenuAction(
            label: systemMenuGroupLabel(ref.watch(localeProvider).languageCode),
            icon: Icons.admin_panel_settings_outlined,
            onSelected: () => _showSystemMenu(context, ref),
          ),
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

  /// 管理者か。PocketBase に接続しない環境(判定する元が無い)は、すべて許可するため管理者として扱う。
  bool _isAdmin(WidgetRef ref) =>
      !ref.watch(pocketbaseEnabledProvider) ||
      (ref.watch(userIdentitySourceProvider).current?.isAdmin ?? false);

  /// システムメニューの項目(`systemMenuGroupId`)。サイドバーには出さない。
  List<MenuEntry> _systemEntries(WidgetRef ref) => [
    for (final module in featureModules)
      if (module is MenuContributor)
        for (final e in (module as MenuContributor).menuEntries(ref))
          if (e.groupId == systemMenuGroupId) e,
  ];

  Future<void> _showSystemMenu(BuildContext context, WidgetRef ref) {
    final bus = ref.read(commandBusProvider);
    final entries = _systemEntries(ref);
    return showDialog<void>(
      context: context,
      builder: (ctx) => SimpleDialog(
        title: Text(systemMenuGroupLabel(ref.read(localeProvider).languageCode)),
        children: [
          for (final e in entries)
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(ctx).pop();
                bus.execute(e.destination);
              },
              child: Text(e.label),
            ),
        ],
      ),
    );
  }

  ///[destination](メニュー用の包みは外す)のページが、許可されているか。パスを求められない遷移先は出さない。
  bool _allowed(MenuAccess access, PageDestination<Object?> destination) {
    final Object target = destination;
    final inner = target is TopLevelDestination ? target.inner : destination;
    try {
      return access.allows(featureLocationOf(inner));
    } on StateError {
      return false;
    }
  }

  /// メニューのグループの並び(画面案 `tools/open-design`: 資源 → 業務のグループ → 会社情報)。
  /// ここに無いグループは、出現順のまま、最後に置く。
  static const _menuOrder = [
    'resource',
    'system',
    'item',
    'production_process',
    'sales',
    'purchasing',
    'production_plan',
    'plan_change',
    'work_record',
    operationsMenuGroupId,
    'access_control',
    'organization',
  ];

  /// グループにせず、1 つの項目として、グループの後ろに並べるもの(画面案: 会社情報は、開閉しない 1 項目)。
  static const _asItem = {'organization'};

  /// メニューのグループのアイコン(画面案のアイコンに近いもの)。
  static const _menuIcons = <String, IconData>{
    'resource': Icons.inventory_2_outlined,
    'system': Icons.storage_outlined,
    'item': Icons.category_outlined,
    'production_process': Icons.stacked_bar_chart_outlined,
    'sales': Icons.receipt_long_outlined,
    'purchasing': Icons.local_shipping_outlined,
    'production_plan': Icons.calendar_month_outlined,
    'plan_change': Icons.fact_check_outlined,
    'work_record': Icons.build_outlined,
    operationsMenuGroupId: Icons.verified_outlined,
    'access_control': Icons.badge_outlined,
    'organization': Icons.apartment_outlined,
  };

  List<MapEntry<String, List<MenuEntry>>> _ordered(
    Map<String, List<MenuEntry>> groups,
  ) {
    int rank(String id) {
      final i = _menuOrder.indexOf(id);
      return i < 0 ? _menuOrder.length : i;
    }

    final entries = groups.entries.toList();
    // 出現順を保つため、同じ順位のものは並べ替えない(List.sort は安定ではないので、添字で決める)
    final index = {for (var i = 0; i < entries.length; i++) entries[i].key: i};
    entries.sort((a, b) {
      final c = rank(a.key).compareTo(rank(b.key));
      return c != 0 ? c : index[a.key]!.compareTo(index[b.key]!);
    });
    return entries;
  }

  /// 項目のアイコン(画面案の項目のアイコン。台帳の実体のキーから引く。無ければ null)。
  IconData? _itemIcon(MenuEntry entry) {
    final Object target = entry.destination;
    final inner = target is TopLevelDestination
        ? target.inner
        : entry.destination;
    return inner is EntityListDestination ? menuIconOf(inner.entityKey) : null;
  }

  /// 項目の遷移先のパス(取れないときは null)。
  String? _pathOf(MenuEntry entry) {
    final Object target = entry.destination;
    final inner = target is TopLevelDestination
        ? target.inner
        : entry.destination;
    try {
      return Uri.parse(featureLocationOf(inner)).path;
    } on StateError {
      return null;
    }
  }

  /// いまのページ [current] に対応する項目の id(選択中の強調に使う)。パスが前方一致する項目のうち、最も長いもの。
  /// 編集画面(`/e/xxx/<id>`)でも、その台帳の項目が選ばれる。
  String? _selectedId(String current, Iterable<MenuEntry> entries) {
    String? best;
    var bestLength = -1;
    for (final e in entries) {
      final p = _pathOf(e);
      if (p == null || p.isEmpty) continue;
      if ((current == p || current.startsWith('$p/')) &&
          p.length > bestLength) {
        best = '${e.groupId}/${e.label}';
        bestLength = p.length;
      }
    }
    return best;
  }

  ///機能の項目をグループ(識別子)ごとにまとめる。
  AppMenu _menu(BuildContext context, WidgetRef ref, AppCoreStrings t) {
    final bus = ref.read(commandBusProvider);
    // 権限で許可されたページだけを出す。ページのアクセスごとに取り出し、持ち回らない。
    // 取り出す間は出さない(許可が分かる前に、許可されないページを見せない)
    final access = ref.watch(pocketbaseEnabledProvider)
        ? (ref
                  .watch(menuAccessProvider(GoRouterState.of(context).uri.path))
                  .value ??
              MenuAccess.none)
        : MenuAccess.all;
    final groups = <String, List<MenuEntry>>{};
    for (final module in featureModules) {
      if (module is! MenuContributor) continue;
      for (final entry in (module as MenuContributor).menuEntries(ref)) {
        if (entry.groupId == systemMenuGroupId) continue; // サイドバーには出さない(ユーザーメニューのシステムメニュー)
        if (!_allowed(access, entry.destination)) continue;
        groups.putIfAbsent(entry.groupId, () => []).add(entry);
      }
    }
    final current = GoRouterState.of(context).uri.path;
    final selectedId = _selectedId(current, groups.values.expand((e) => e));
    return AppMenu(
      topItems: [
        AppMenuItem(
          id: 'dashboard',
          selected: current == DashboardConstant.path,
          label: t.shell.dashboard,
          icon: Icons.dashboard_outlined,
          onSelected: () => context.go(DashboardConstant.path),
        ),
      ],
      bottomItems: [
        for (final entry in _ordered(groups))
          if (_asItem.contains(entry.key))
            AppMenuItem(
              id: '${entry.value.first.groupId}/${entry.value.first.label}',
              selected:
                  selectedId ==
                  '${entry.value.first.groupId}/${entry.value.first.label}',
              label: entry.value.first.label,
              icon: _menuIcons[entry.key] ?? Icons.folder_outlined,
              onSelected: () => bus.execute(
                TopLevelDestination(entry.value.first.destination),
              ),
            ),
      ],
      groups: [
        for (final entry in _ordered(groups))
          if (!_asItem.contains(entry.key))
            AppMenuGroup(
              id: entry.key,
              icon: _menuIcons[entry.key] ?? Icons.folder_outlined,
              label: entry.value.first.groupLabel,
              items: [
                for (final e in entry.value)
                  AppMenuItem(
                    id: '${e.groupId}/${e.label}',
                    selected: selectedId == '${e.groupId}/${e.label}',
                    label: e.label,
                    icon: _itemIcon(e) ?? _menuIcons[entry.key],
                    onSelected: () =>
                        bus.execute(TopLevelDestination(e.destination)),
                  ),
              ],
            ),
      ],
    );
  }
}
