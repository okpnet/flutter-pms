import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pbapi/pbapi.dart';

import '../auth_files_destinations.dart';
import '../form_rules.dart';
import '../i18n/strings_provider.dart';
import 'form_support.dart';

/// 新規登録(画面案 `#/register`)。ユーザーID・メールアドレス・名前・ふりがなの4項目が必須。
///
/// 画面案は「6桁コードをメールで送る」流れだが、サーバー(README)は
/// 申請 → 管理者の承認 → 認証コードの発行 → コード入力、なので、送信後は「受け付けました」を出す。
/// サーバーの応答はいつも同じで、ユーザーIDが使われているかは分からない。
/// ふりがなは申請の本人情報(`profile`)に入れる。
class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> with BusyAction {
  final _userId = TextEditingController();
  final _email = TextEditingController();
  final _name = TextEditingController();
  final _ruby = TextEditingController();
  final _errors = <String, String?>{};
  bool _accepted = false;

  @override
  void dispose() {
    _userId.dispose();
    _email.dispose();
    _name.dispose();
    _ruby.dispose();
    super.dispose();
  }

  String? _check(AuthFilesStrings t, String field) => switch (field) {
    'userId' => FormRules.userId(t, _userId.text),
    'email' => FormRules.email(t, _email.text),
    'name' => FormRules.required(t, _name.text),
    _ => FormRules.kana(t, _ruby.text),
  };

  void _validate(String field) {
    final t = ref.read(authFilesStringsProvider);
    setState(() => _errors[field] = _check(t, field));
  }

  Future<void> _submit() async {
    final t = ref.read(authFilesStringsProvider);
    setState(() {
      for (final f in const ['userId', 'email', 'name', 'ruby']) {
        _errors[f] = _check(t, f);
      }
    });
    if (_errors.values.any((e) => e != null)) return;
    final ok = await run(
      () => ref
          .read(accountServiceProvider)
          .requestSignup(
            fullName: _name.text,
            requestedUsername: _userId.text,
            contactEmail: _email.text,
            profile: {'ruby': _ruby.text.trim()},
          ),
      operation: 'signup',
    );
    if (ok && mounted) setState(() => _accepted = true);
  }

  Widget _field(
    AuthFilesStrings t,
    String field,
    TextEditingController controller,
    String label, {
    TextInputType? keyboardType,
    int maxLength = 60,
  }) => FieldRow(
    controller: controller,
    label: label,
    requiredLabel: t.common.required,
    error: _errors[field],
    enabled: !busy,
    keyboardType: keyboardType,
    maxLength: maxLength,
    onBlur: () => _validate(field),
  );

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider);
    final bus = ref.read(commandBusProvider);
    if (_accepted) {
      return AuthCard(
        heading: t.register.acceptedHeading,
        children: [
          NoticeBanner(t.register.accepted, isError: false),
          FilledButton(
            onPressed: () => bus.execute(const AcceptCodeDestination()),
            child: Text(t.register.toCode),
          ),
          OutlinedButton(
            onPressed: () => bus.execute(const LoginDestination()),
            child: Text(t.common.backToLogin),
          ),
        ],
      );
    }
    return AuthCard(
      heading: t.register.heading,
      children: [
        if (errorText != null) NoticeBanner(errorText!),
        _field(t, 'userId', _userId, t.register.userId, maxLength: 32),
        _field(
          t,
          'email',
          _email,
          t.register.email,
          keyboardType: TextInputType.emailAddress,
          maxLength: 80,
        ),
        _field(t, 'name', _name, t.register.name, maxLength: 40),
        _field(t, 'ruby', _ruby, t.register.ruby),
        FilledButton(
          onPressed: busy ? null : _submit,
          child: Text(t.register.submit),
        ),
        Text(t.register.note, style: Theme.of(context).textTheme.bodySmall),
        OutlinedButton(
          onPressed: busy ? null : () => bus.execute(const LoginDestination()),
          child: Text(t.common.backToLogin),
        ),
      ],
    );
  }
}
