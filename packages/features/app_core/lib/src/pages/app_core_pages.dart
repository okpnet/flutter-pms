import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../i18n/strings_provider.dart';

/// アプリケーションのバージョン。ビルド時に `--dart-define=APP_VERSION=1.2.3` で渡す。
const appVersion = String.fromEnvironment('APP_VERSION', defaultValue: '0.0.1');

/// ブート画面(読み込み中)。
class BootPage extends ConsumerWidget {
  const BootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(appCoreStringsProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [const CircularProgressIndicator(), Text(t.boot.loading)],
        ),
      ),
    );
  }
}

/// エラー画面。アプリケーションエラーの内容を表示する。
class ErrorPage extends ConsumerWidget {
  const ErrorPage({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(appCoreStringsProvider);
    final scheme = Theme.of(context).colorScheme;
    return ScreenScaffold(
      title: t.error.title,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
          children: [
            Icon(Icons.error_outline, size: 48, color: scheme.error),
            Text(t.error.message),
            if (message != null && message!.isNotEmpty) Text(message!),
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
      ),
    );
  }
}

/// ログアウト画面。ログアウトしたこと(セッション切れを含む)を表示する。
///
/// 認証(Keycloak)を導入するまでは、仮のログイン(標準のユーザーに戻す)ボタンを置く。
class LogoutPage extends ConsumerWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(appCoreStringsProvider).logout;
    return ScreenScaffold(
      title: t.title,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
          children: [
            const Icon(Icons.logout, size: 48),
            Text(t.message),
            FilledButton(
              onPressed: () {
                ref.read(userSummaryProvider.notifier).reset();
                context.go('/');
              },
              child: Text(t.signIn),
            ),
          ],
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

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(appCoreStringsProvider).settings;
    final iconOnly = ref.watch(sidebarIconOnlyProvider);
    return ScreenScaffold(
      title: t.title,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(t.note, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 16),
          Text(
            t.language.title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          RadioGroup<_LanguageChoice>(
            groupValue: _choiceOf(),
            onChanged: (v) {
              if (v != null) _select(v);
            },
            child: Column(
              children: [
                RadioListTile<_LanguageChoice>(
                  value: _LanguageChoice.system,
                  title: Text(t.language.system),
                ),
                RadioListTile<_LanguageChoice>(
                  value: _LanguageChoice.ja,
                  title: Text(t.language.ja),
                ),
                RadioListTile<_LanguageChoice>(
                  value: _LanguageChoice.en,
                  title: Text(t.language.en),
                ),
              ],
            ),
          ),
          const Divider(),
          Text(t.layout.title, style: Theme.of(context).textTheme.titleMedium),
          SwitchListTile(
            title: Text(t.layout.sidebarIconOnly),
            value: iconOnly,
            onChanged: ref.read(sidebarIconOnlyProvider.notifier).set,
          ),
          const Divider(),
          Text(t.user.title, style: Theme.of(context).textTheme.titleMedium),
          Text(t.user.note, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 8),
          TextField(
            controller: _userName,
            decoration: InputDecoration(labelText: t.user.name),
          ),
          TextField(
            controller: _userRole,
            decoration: InputDecoration(labelText: t.user.role),
          ),
          const SizedBox(height: 8),
          Row(
            spacing: 8,
            children: [
              FilledButton(onPressed: _applyUser, child: Text(t.user.apply)),
              OutlinedButton(onPressed: _resetUser, child: Text(t.user.reset)),
            ],
          ),
          const Divider(),
          Text(t.about.title, style: Theme.of(context).textTheme.titleMedium),
          ListTile(
            title: Text(t.about.version),
            trailing: const Text(appVersion),
          ),
        ],
      ),
    );
  }
}
