import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pbapi/pbapi.dart';

import '../account_flow.dart';
import '../auth_files_destinations.dart';
import '../form_rules.dart';
import '../i18n/strings_provider.dart';
import 'form_support.dart';

/// 新しいパスワード(画面案 `#/forgot/reset`)。8文字以上で、確認の入力と同じでないと送れない。
///
/// ここでコードと新しいパスワードをまとめてサーバーへ送る。コードの誤り・期限切れ・回数超過は
/// サーバーが区別しないため、同じ文言を出して認証コードの入力へ戻れるようにする。
/// 成功してもログインはせず、ログイン画面へ戻って完了を案内する。
class NewPasswordPage extends ConsumerStatefulWidget {
  const NewPasswordPage({super.key});

  @override
  ConsumerState<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends ConsumerState<NewPasswordPage>
    with BusyAction {
  final _password = TextEditingController();
  final _confirm = TextEditingController();
  String? _passwordError;
  String? _confirmError;

  @override
  void initState() {
    super.initState();
    // コードを預かっていなければ、認証コードの入力へ戻す(画面案のルートの確認と同じ)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !ref.read(accountFlowProvider).hasCode) {
        ref.read(commandBusProvider).execute(const AcceptCodeDestination());
      }
    });
  }

  @override
  void dispose() {
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final t = ref.read(authFilesStringsProvider);
    setState(() {
      _passwordError = FormRules.password(t, _password.text);
      _confirmError = FormRules.passwordConfirm(
        t,
        _confirm.text,
        _password.text,
      );
    });
    if (_passwordError != null || _confirmError != null) return;
    final flow = ref.read(accountFlowProvider);
    final ok = await run(
      () => ref
          .read(accountServiceProvider)
          .acceptCode(
            username: flow.username,
            code: flow.code,
            password: _password.text,
          ),
      operation: 'acceptCode',
      codeEntry: true,
    );
    if (!ok || !mounted) return;
    _password.clear();
    _confirm.clear();
    ref.read(accountFlowProvider.notifier).clear();
    ref.read(authFlashProvider.notifier).set(t.newPassword.done);
    await ref.read(commandBusProvider).execute(const LoginDestination());
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider);
    final bus = ref.read(commandBusProvider);
    return AuthCard(
      heading: t.newPassword.heading,
      children: [
        if (errorText != null) NoticeBanner(errorText!),
        FieldRow(
          controller: _password,
          label: t.newPassword.password,
          requiredLabel: t.common.required,
          error: _passwordError,
          enabled: !busy,
          obscure: true,
          autofocus: true,
          maxLength: 64,
          onBlur: () => setState(
            () => _passwordError = FormRules.password(t, _password.text),
          ),
        ),
        FieldRow(
          controller: _confirm,
          label: t.newPassword.passwordConfirm,
          requiredLabel: t.common.required,
          error: _confirmError,
          enabled: !busy,
          obscure: true,
          maxLength: 64,
          onBlur: () => setState(
            () => _confirmError = FormRules.passwordConfirm(
              t,
              _confirm.text,
              _password.text,
            ),
          ),
          onSubmitted: (_) => _submit(),
        ),
        Text(t.newPassword.note, style: Theme.of(context).textTheme.bodySmall),
        FilledButton(
          onPressed: busy ? null : _submit,
          child: Text(t.newPassword.submit),
        ),
        OutlinedButton(
          onPressed: busy
              ? null
              : () => bus.execute(const AcceptCodeDestination()),
          child: Text(t.code.back),
        ),
      ],
    );
  }
}
