import 'package:app_core/app_core_api.dart';
import 'package:backstage/backstage_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pbapi/pbapi.dart';

import '../account_flow.dart';
import '../auth_mode.dart';
import '../auth_files_destinations.dart';
import '../failure_message.dart'
    show AuthServerUnconfiguredException, JwtUnavailableException;
import '../form_rules.dart';
import '../i18n/strings_provider.dart';
import 'form_support.dart';

/// ログイン(画面案 `#/login`)。ユーザーIDまたはEメールの1つの欄とパスワード。
///
/// 認証サーバーの接続先が未設定([AuthMode.unconfigured])でも画面は通常のまま。裏設定の入口に一致しなければエラーにする。
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

  Future<void> _submit() async {
    final t = ref.read(authFilesStringsProvider);
    setState(() {
      _identityError = FormRules.required(t, _identity.text);
      _passwordError = _password.text.isEmpty ? t.rules.required : null;
    });
    if (_identityError != null || _passwordError != null) return;
    ref.read(authFlashProvider.notifier).clear();
    var entered = false;
    var underMaintenance = false;
    final ok = await run(() async {
      // 1. メンテナンス中か。中なら、以降の評価・送信をせず、メンテナンスのページへ向ける
      underMaintenance =
          await ref.read(pageSessionMediatorProvider).refresh() ==
          PageSessionStatus.maintenance;
      if (underMaintenance) return;
      // 2. 裏設定の入口(特定のユーザーIDとパスワード)。一致しなければ、通常のログインとして続ける
      // (一致しない理由・入口の存在は示さない)。
      if (await ref
          .read(backstageEntryGateProvider)
          .matches(_identity.text, _password.text)) {
        entered = true;
        return;
      }
      // 3. ログイン(サーバーの判定。不一致はメッセージにする)。接続先が未設定ならログインできない
      if (ref.read(authModeProvider) == AuthMode.unconfigured) {
        throw const AuthServerUnconfiguredException();
      }
      final sessions = ref.read(sessionServiceProvider);
      final session = await sessions.login(
        _identity.text.trim(),
        _password.text,
      );
      // 4. JWT(GraphQL サーバー用)を取得できるか。できなければログインを取り消してメッセージにする
      try {
        await sessions.graphqlToken();
      } on PbException catch (e) {
        await sessions.logout();
        throw JwtUnavailableException(e.logMessage);
      }
      ref
          .read(userSummaryProvider.notifier)
          .set(UserSummary(name: session.username));
    }, operation: 'login');
    if (!ok || !mounted) return;
    _password.clear();
    if (underMaintenance) {
      // 評価し直すと、メンテナンスの状態に従ってメンテナンスのページへ向く
      GoRouter.of(context).refresh();
      return;
    }
    if (!entered) {
      await ref.read(commandBusProvider).execute(const DashboardDestination());
      return;
    }
    // 裏設定へ進めなかったときは、ログインのページに留まる
    try {
      await ref.read(commandBusProvider).execute(const BackstageDestination());
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .error('[auth_files] backstage', ex: e, trace: st);
    }
  }

  void _go(PageDestination<Object?> destination) =>
      ref.read(commandBusProvider).execute(destination);

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider);
    final flash = ref.watch(authFlashProvider);
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
          child: busy
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox.square(
                      dimension: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                    const SizedBox(width: 8),
                    Text(t.login.sending),
                  ],
                )
              : Text(t.login.submit),
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
