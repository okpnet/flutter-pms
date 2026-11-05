import 'package:app_core/app_core_api.dart';
import 'package:backstage/backstage_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pbapi/pbapi.dart';

import '../account_flow.dart';
import '../auth_mode.dart';
import '../auth_files_destinations.dart';
import '../form_rules.dart';
import '../i18n/strings_provider.dart';
import 'form_support.dart';

/// ログイン(画面案 `#/login`)。ユーザーIDまたはEメールの1つの欄とパスワード。
///
/// 認証サーバーに接続しない開発用([AuthMode.provisional])は、資格情報を求めず標準のユーザーでログインする。
/// 成功したらログインユーザーの表示(`userSummaryProvider`)を更新してダッシュボードへ進む。
/// 状態(申請中・無効など)の判定はサーバーが行い、ここでは判定しない。
/// 新規登録・パスワードの再設定の完了は、案内の帯(`authFlashProvider`)で伝える。
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> with BusyAction {
  final _identity = TextEditingController();
  final _password = TextEditingController();
  String? _identityError;
  String? _passwordError;

  @override
  void dispose() {
    _identity.dispose();
    _password.dispose();
    super.dispose();
  }

  /// 認証サーバーに接続しない開発用([AuthMode.provisional])。資格情報は確認せず、標準のユーザーでログインする。
  Future<void> _signInProvisional() async {
    ref.read(authFlashProvider.notifier).clear();
    ref.read(userSummaryProvider.notifier).reset();
    await ref.read(commandBusProvider).execute(const DashboardDestination());
  }

  Future<void> _submit() async {
    final t = ref.read(authFilesStringsProvider);
    setState(() {
      _identityError = FormRules.required(t, _identity.text);
      _passwordError = _password.text.isEmpty ? t.rules.required : null;
    });
    if (_identityError != null || _passwordError != null) return;
    ref.read(authFlashProvider.notifier).clear();
    var entered = false;
    final ok = await run(() async {
      // 裏設定の入口(特定のユーザーIDとパスワード)。一致しなければ、通常のログインとして続ける
      // (一致しない理由・入口の存在は示さない)。
      if (await ref
          .read(backstageEntryGateProvider)
          .matches(_identity.text, _password.text)) {
        entered = true;
        return;
      }
      final session = await ref
          .read(sessionServiceProvider)
          .login(_identity.text.trim(), _password.text);
      ref
          .read(userSummaryProvider.notifier)
          .set(UserSummary(name: session.username));
    }, operation: 'login');
    if (ok && mounted) {
      _password.clear();
      await ref
          .read(commandBusProvider)
          .execute(
            entered
                ? const BackstageDestination()
                : const DashboardDestination(),
          );
    }
  }

  void _go(PageDestination<Object?> destination) =>
      ref.read(commandBusProvider).execute(destination);

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider);
    final flash = ref.watch(authFlashProvider);
    if (ref.watch(authModeProvider) == AuthMode.provisional) {
      return AuthCard(
        heading: t.login.heading(app: ref.watch(appNameProvider)),
        children: [
          NoticeBanner(t.login.provisionalNotice),
          FilledButton(
            onPressed: _signInProvisional,
            child: Text(t.login.provisionalSubmit),
          ),
        ],
      );
    }
    return AuthCard(
      heading: t.login.heading(app: ref.watch(appNameProvider)),
      children: [
        if (flash != null) NoticeBanner(flash, isError: false),
        if (errorText != null) NoticeBanner(errorText!),
        FieldRow(
          controller: _identity,
          label: t.login.identity,
          requiredLabel: t.common.required,
          error: _identityError,
          enabled: !busy,
          autofocus: true,
          onBlur: () => setState(
            () => _identityError = FormRules.required(t, _identity.text),
          ),
        ),
        FieldRow(
          controller: _password,
          label: t.login.password,
          requiredLabel: t.common.required,
          error: _passwordError,
          enabled: !busy,
          obscure: true,
          onSubmitted: (_) => _submit(),
        ),
        FilledButton(
          onPressed: busy ? null : _submit,
          child: Text(busy ? t.login.sending : t.login.submit),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 16,
          children: [
            TextButton(
              onPressed: busy
                  ? null
                  : () => _go(const PasswordResetRequestDestination()),
              child: Text(t.login.forgot),
            ),
            TextButton(
              onPressed: busy ? null : () => _go(const SignupDestination()),
              child: Text(t.login.register),
            ),
            TextButton(
              onPressed: busy ? null : () => _go(const AcceptCodeDestination()),
              child: Text(t.login.haveCode),
            ),
          ],
        ),
      ],
    );
  }
}
