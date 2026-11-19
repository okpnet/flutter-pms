import 'package:loadux_lib/loadux_lib.dart';
import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:theme_lib/theme_lib.dart';
import 'package:view_responsiveness/constants/media_break_point.dart';

import '../app_core_destinations.dart';
import '../i18n/strings_provider.dart';
import '../sign_in.dart';
export 'dashboard_page.dart';

/// アプリケーションのバージョン。ビルド時に `--dart-define=APP_VERSION=1.2.3` で渡す。
const appVersion = String.fromEnvironment('APP_VERSION', defaultValue: '0.0.1');

/// ブート画面(読み込み中)。画面案(`tools/open-design` の `#/boot`)の構成:
/// 中央のカードに、進行中の表示・見出し・説明・進行バー。
class BootPage extends ConsumerWidget {
  const BootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(appCoreStringsProvider).boot;
    return Scaffold(
      body: StatusCard(
        leading: const SizedBox(
          width: 48,
          height: 48,
          child: LoadingIndicator(strokeWidth: 4),
        ),
        title: t.title(app: ref.watch(appCoreStringsProvider).app.title),
        message: t.message,
        showProgress: true,
      ),
    );
  }
}

/// エラー画面。アプリケーションエラーの内容を表示する。
/// 画面案(`tools/open-design` の `#/error`)の構成: 中央のカードに、丸いアイコン
/// (`errorContainer` の地に `onErrorContainer`)・見出し・エラーの内容・ボタン。
class ErrorPage extends ConsumerWidget {
  const ErrorPage({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(appCoreStringsProvider);
    return ScreenScaffold(
      title: t.error.title,
      body: StatusCard(
        leading: const StatusIcon(Icons.error_outline, isError: true),
        title: t.error.message,
        message: message,
        actions: [
          FilledButton(
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              } else {
                context.go('/');
              }
            },
            child: Text(t.error.back),
          ),
        ],
      ),
    );
  }
}

/// 権限の無いページを開こうとしたときの画面。画像と、トップへ戻るボタンだけを持つ
/// (ログインしていればダッシュボード、していなければログイン)。
class AccessDeniedPage extends ConsumerWidget {
  const AccessDeniedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(appCoreStringsProvider);
    final signedIn = ref.watch(userSummaryProvider) != null;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 480),
                // 画像(PNG)。ライト・ダークをテーマの明るさで切り替える
                child: Image.asset(
                  Theme.of(context).brightness == Brightness.dark
                      ? 'assets/access_denied_dark.png'
                      : 'assets/access_denied_light.png',
                  package: 'app_core',
                  semanticLabel: t.accessDenied.title,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                t.accessDenied.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(t.accessDenied.message, textAlign: TextAlign.center),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {
                  final bus = ref.read(commandBusProvider);
                  final login = ref.read(signInDestinationProvider);
                  // 積まずに、トップ(ログイン中はダッシュボード、未ログインはログイン)へ入れ替える
                  final PageDestination<Object?> top = signedIn || login == null
                      ? const DashboardDestination()
                      : login;
                  bus.execute(TopLevelDestination(top));
                },
                child: Text(
                  signedIn
                      ? t.accessDenied.toDashboard
                      : t.accessDenied.toLogin,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 設定。使用しているユーザーにだけ影響する設定(使用言語、画面、バージョン情報)。
///
/// 使用言語は、既定が実行環境(OS)の言語。選んだ言語は [localeProvider] に反映される。
class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

/// 使用言語の選択。
enum _LanguageChoice { system, ja, en }

class _SettingsPageState extends ConsumerState<SettingsPage> {
  late final TextEditingController _userName;
  late final TextEditingController _userRole;

  @override
  void initState() {
    super.initState();
    final user = ref.read(userSummaryProvider);
    _userName = TextEditingController(text: user?.name ?? '');
    _userRole = TextEditingController(text: user?.role ?? '');
  }

  @override
  void dispose() {
    _userName.dispose();
    _userRole.dispose();
    super.dispose();
  }

  /// 入力したユーザー名・役割を設定値として与える(名前は必須)。
  void _applyUser() {
    final name = _userName.text.trim();
    if (name.isEmpty) return;
    ref
        .read(userSummaryProvider.notifier)
        .set(UserSummary(name: name, role: _userRole.text.trim()));
  }

  void _resetUser() {
    ref.read(userSummaryProvider.notifier).reset();
    final user = ref.read(userSummaryProvider);
    _userName.text = user?.name ?? '';
    _userRole.text = user?.role ?? '';
  }

  /// いまの使用言語の選択(設定の復元後も合うよう、Provider から求める)。
  _LanguageChoice _choiceOf() {
    if (ref.watch(localeFollowsSystemProvider)) return _LanguageChoice.system;
    return ref.watch(localeProvider).languageCode == 'en'
        ? _LanguageChoice.en
        : _LanguageChoice.ja;
  }

  void _select(_LanguageChoice choice) {
    final locale = ref.read(localeProvider.notifier);
    switch (choice) {
      case _LanguageChoice.system:
        locale.useSystemLocale();
      case _LanguageChoice.ja:
        locale.set(const Locale('ja'));
      case _LanguageChoice.en:
        locale.set(const Locale('en'));
    }
  }

  /// 区分の間の区切り。上下に余白を取り、ボタンなどに接しないようにする。
  Widget _gap() => const Padding(
    padding: EdgeInsets.symmetric(vertical: 24),
    child: Divider(height: 1),
  );

  Widget _heading(BuildContext context, String text) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Text(text, style: Theme.of(context).textTheme.titleMedium),
  );

  /// 項目名つきの小さな見出し。
  Widget _caption(BuildContext context, String text) => Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: Text(text, style: Theme.of(context).textTheme.labelLarge),
  );

  /// 選択肢を横に並べるラジオボタン。
  Widget _radioRow<T>({
    required T groupValue,
    required ValueChanged<T> onChanged,
    required List<(T, String)> options,
  }) {
    return RadioGroup<T>(
      groupValue: groupValue,
      onChanged: (v) {
        if (v != null) onChanged(v);
      },
      child: Wrap(
        spacing: 24,
        runSpacing: 4,
        children: [
          for (final (value, label) in options)
            InkWell(
              onTap: () => onChanged(value),
              borderRadius: BorderRadius.circular(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<T>(value: value),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(label),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  /// 配色のテーマの選択肢。項目の背景をそのテーマの色にして、選ぶ前に見分けられるようにする。
  Widget _themeDropdown(ThemeState themeState, ThemeManager manager) {
    final themes = themeState.themes.values.toList();
    Widget swatch(ThemeDefinition d) {
      final scheme = ColorScheme.fromSeed(seedColor: d.light.seed);
      return Container(
        width: double.infinity,
        height: 36,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: scheme.primaryContainer,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(d.name, style: TextStyle(color: scheme.onPrimaryContainer)),
      );
    }

    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 320),
        child: DropdownButtonFormField<String>(
          key: const ValueKey('themeSelect'),
          initialValue: themeState.activeId,
          isExpanded: true,
          // 選んだ項目の表示と、メニューの各項目を、テーマの色で出す
          selectedItemBuilder: (context) => [for (final d in themes) swatch(d)],
          items: [
            for (final d in themes)
              DropdownMenuItem(value: d.id, child: swatch(d)),
          ],
          onChanged: (id) {
            if (id != null) manager.select(id);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(appCoreStringsProvider).settings;
    final iconOnly = ref.watch(sidebarIconOnlyProvider);
    final themeState = ref.watch(themeManagerProvider);
    final themeManager = ref.read(themeManagerProvider.notifier);
    final textTheme = Theme.of(context).textTheme;
    return ScreenScaffold(
      title: t.title,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          Text(t.note, style: textTheme.bodySmall),
          const SizedBox(height: 24),
          _heading(context, t.language.title),
          Align(
            alignment: Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 320),
              child: DropdownButtonFormField<_LanguageChoice>(
                key: const ValueKey('languageSelect'),
                initialValue: _choiceOf(),
                isExpanded: true,
                decoration: const InputDecoration(isDense: true),
                items: [
                  DropdownMenuItem(
                    value: _LanguageChoice.system,
                    child: Text(t.language.system),
                  ),
                  DropdownMenuItem(
                    value: _LanguageChoice.ja,
                    child: Text(t.language.ja),
                  ),
                  DropdownMenuItem(
                    value: _LanguageChoice.en,
                    child: Text(t.language.en),
                  ),
                ],
                onChanged: (v) {
                  if (v != null) _select(v);
                },
              ),
            ),
          ),
          _gap(),
          _heading(context, t.layout.title),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(t.layout.sidebarIconOnly),
            value: iconOnly,
            onChanged: ref.read(sidebarIconOnlyProvider.notifier).set,
          ),
          _gap(),
          _heading(context, t.calendar.title),
          _caption(context, t.calendar.firstWeekday),
          Align(
            alignment: Alignment.centerLeft,
            child: SegmentedButton<int>(
              key: const ValueKey('calendarFirstWeekday'),
              segments: [
                ButtonSegment(
                  value: DateTime.sunday,
                  label: Text(t.calendar.sunday),
                ),
                ButtonSegment(
                  value: DateTime.monday,
                  label: Text(t.calendar.monday),
                ),
              ],
              selected: {ref.watch(calendarFirstWeekdayProvider)},
              onSelectionChanged: (v) =>
                  ref.read(calendarFirstWeekdayProvider.notifier).set(v.first),
            ),
          ),
          const SizedBox(height: 16),
          _caption(context, t.calendar.visibleWeekdays),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (var w = 1; w <= 7; w++)
                FilterChip(
                  key: ValueKey('calendarWeekday$w'),
                  label: Text(t.calendar.weekdays[w - 1]),
                  selected: ref
                      .watch(calendarVisibleWeekdaysProvider)
                      .contains(w),
                  onSelected: (_) => ref
                      .read(calendarVisibleWeekdaysProvider.notifier)
                      .toggle(w),
                ),
            ],
          ),
          _gap(),
          _heading(context, t.theme.title),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(t.theme.note, style: textTheme.bodySmall),
          ),
          _caption(context, t.theme.mode.title),
          _radioRow<ThemeMode>(
            groupValue: themeState.mode,
            onChanged: themeManager.setMode,
            options: [
              (ThemeMode.system, t.theme.mode.system),
              (ThemeMode.light, t.theme.mode.light),
              (ThemeMode.dark, t.theme.mode.dark),
            ],
          ),
          const SizedBox(height: 16),
          _caption(context, t.theme.selection),
          // 登録されているテーマ(組み込みの既定と、取り込んだ追加のテーマ)から選ぶ。
          // テーマの中身の編集は、このアプリでは行わない(別のアプリケーションで行う)。
          _themeDropdown(themeState, themeManager),
          _gap(),
          _heading(context, t.user.title),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(t.user.note, style: textTheme.bodySmall),
          ),
          // 現在のユーザーの表示(大)。名前・所属・顔写真は、ログインのときに決まる(引数・プロパティで変えられる)
          if (ref.watch(userSummaryProvider) case final u?)
            UserContainer(
              user: AppUser(
                name: u.name,
                role: u.role,
                photo: ref.watch(userPhotoProvider),
              ),
              size: UserContainerSize.large,
            ),
          // ユーザーの画像(user_profile の部品。アプリが差し込む。変更できるのは裏設定が許すときだけ)
          if (ref.watch(userImageSlotProvider) case final slot?) slot(context),
          const SizedBox(height: 16),
          // 入力項目は横に並べる(狭いスマートフォンの幅だけ縦)
          LayoutBuilder(
            builder: (context, c) {
              final name = TextField(
                controller: _userName,
                decoration: InputDecoration(labelText: t.user.name),
              );
              final role = TextField(
                controller: _userRole,
                decoration: InputDecoration(labelText: t.user.role),
              );
              return MediaBreakPoint.of(c.maxWidth) == MediaBreakPoint.mobile
                  ? Column(spacing: 12, children: [name, role])
                  : Row(
                      spacing: 16,
                      children: [
                        Expanded(child: name),
                        Expanded(child: role),
                      ],
                    );
            },
          ),
          const SizedBox(height: 24),
          ActionButtons(
            primaryLabel: t.user.apply,
            onPrimary: _applyUser,
            secondaryLabel: t.user.reset,
            onSecondary: _resetUser,
          ),
          _gap(),
          _heading(context, t.about.title),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(t.about.version),
            trailing: const Text(appVersion),
          ),
        ],
      ),
    );
  }
}
