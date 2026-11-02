import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pbapi/pbapi.dart';

import '../account_flow.dart';
import '../auth_files_destinations.dart';
import '../form_rules.dart';
import '../i18n/strings_provider.dart';
import 'form_support.dart';

/// パスワードを忘れた(画面案 `#/forgot`)。ユーザーIDまたはメールアドレスを入力して送信する。
///
/// 応答はいつも同じで、登録の有無はわからない。メールでコードを送るか、管理者から受け取るかは
/// サーバーが判断する。送信後は認証コードの入力へ進む。
class ForgotPage extends ConsumerStatefulWidget {
  const ForgotPage({super.key});

  @override
  ConsumerState<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends ConsumerState<ForgotPage> with BusyAction {
  late final _who = TextEditingController(
    text: ref.read(accountFlowProvider).who,
  );
  String? _whoError;

  @override
  void dispose() {
    _who.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final t = ref.read(authFilesStringsProvider);
    setState(() => _whoError = FormRules.required(t, _who.text));
    if (_whoError != null) return;
    final ok = await run(
      () => ref.read(accountServiceProvider).requestPasswordReset(_who.text),
      operation: 'requestPasswordReset',
    );
    if (!ok || !mounted) return;
    ref.read(accountFlowProvider.notifier).setWho(_who.text.trim());
    await ref.read(commandBusProvider).execute(const AcceptCodeDestination());
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider);
    return AuthCard(
      heading: t.forgot.heading,
      children: [
        Text(t.forgot.description),
        if (errorText != null) NoticeBanner(errorText!),
        FieldRow(
          controller: _who,
          label: t.forgot.who,
          requiredLabel: t.common.required,
          error: _whoError,
          enabled: !busy,
          autofocus: true,
          maxLength: 80,
          onBlur: () => setState(
            () => _whoError = FormRules.required(t, _who.text),
          ),
          onSubmitted: (_) => _submit(),
        ),
        FilledButton(
          onPressed: busy ? null : _submit,
          child: Text(t.forgot.submit),
        ),
        OutlinedButton(
          onPressed: busy
              ? null
              : () =>
                    ref.read(commandBusProvider).execute(const LoginDestination()),
          child: Text(t.common.backToLogin),
        ),
      ],
    );
  }
}
