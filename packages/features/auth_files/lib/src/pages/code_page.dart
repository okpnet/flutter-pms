import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../account_flow.dart';
import '../auth_files_destinations.dart';
import '../form_rules.dart';
import '../i18n/strings_provider.dart';
import 'form_support.dart';

/// 認証コードの入力(画面案 `#/forgot/code`)。有効化(新規登録の承認後)とパスワード再設定の共通の入口。
///
/// コードの正否はサーバーが最後の呼び出し(新しいパスワードの送信)で判定する。ここでは形式
/// (12文字の英数字。ハイフン・空白は不要)だけを確認し、コードは [accountFlowProvider] に預けて
/// 「新しいパスワード」へ進む。「パスワードを忘れた」から来たときは、ユーザーIDが入力済みになる。
class CodePage extends ConsumerStatefulWidget {
  const CodePage({super.key});

  @override
  ConsumerState<CodePage> createState() => _CodePageState();
}

class _CodePageState extends ConsumerState<CodePage> {
  late final _username = TextEditingController(text: _initialUsername());
  final _code = TextEditingController();
  String? _usernameError;
  String? _codeError;

  /// ユーザーIDの入力済みの値。「忘れた」の入力がメールのときは、ユーザーIDではないので空にする。
  String _initialUsername() {
    final flow = ref.read(accountFlowProvider);
    if (flow.username.isNotEmpty) return flow.username;
    return flow.who.contains('@') ? '' : flow.who;
  }

  @override
  void dispose() {
    _username.dispose();
    _code.dispose();
    super.dispose();
  }

  void _next() {
    final t = ref.read(authFilesStringsProvider);
    setState(() {
      _usernameError = FormRules.required(t, _username.text);
      _codeError = FormRules.code(t, _code.text);
    });
    if (_usernameError != null || _codeError != null) return;
    ref
        .read(accountFlowProvider.notifier)
        .setCode(
          username: _username.text.trim(),
          code: FormRules.normalizeCode(_code.text),
        );
    ref.read(commandBusProvider).execute(const NewPasswordDestination());
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider);
    final bus = ref.read(commandBusProvider);
    final requested = ref.read(accountFlowProvider).who.isNotEmpty;
    return AuthCard(
      heading: t.code.heading,
      children: [
        Text(requested ? t.code.accepted : t.code.description),
        FieldRow(
          controller: _username,
          label: t.code.username,
          requiredLabel: t.common.required,
          error: _usernameError,
          maxLength: 80,
          onBlur: () => setState(
            () => _usernameError = FormRules.required(t, _username.text),
          ),
        ),
        FieldRow(
          controller: _code,
          label: t.code.code,
          requiredLabel: t.common.required,
          error: _codeError,
          autofocus: true,
          maxLength: 20,
          onBlur: () =>
              setState(() => _codeError = FormRules.code(t, _code.text)),
          onSubmitted: (_) => _next(),
        ),
        FilledButton(onPressed: _next, child: Text(t.code.submit)),
        OutlinedButton(
          onPressed: () => bus.execute(
            requested
                ? const PasswordResetRequestDestination()
                : const LoginDestination(),
          ),
          child: Text(requested ? t.code.back : t.common.backToLogin),
        ),
      ],
    );
  }
}
