// 「ユーザーIDまたはEメール」ログイン画面 (サンプル)
//
// 入力欄は1つ。ユーザーIDかEメールかの判定はサーバー (PocketBase) が行うため、
// App 側では区別せずそのまま送信する。
//
// 使い方:
//   final service = await PbService.init('http://raspberrypi.local:8090');
//   Navigator.push(context, MaterialPageRoute(
//     builder: (_) => LoginPage(service: service, onLoggedIn: () { ... }),
//   ));

import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';

import 'pb_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.service,
    required this.onLoggedIn,
    this.onInvite,
  });

  final PbService service;
  final VoidCallback onLoggedIn;

  /// 「招待コードで登録」画面へ (任意)
  final VoidCallback? onInvite;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _identityCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscure = true;
  bool _busy = false;
  String? _error;

  // ユーザーID: 英数字 . _ - (3〜32文字) / Eメール: 簡易チェック
  static final _usernameRe = RegExp(r'^[A-Za-z0-9._-]{3,32}$');
  static final _emailRe = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  @override
  void dispose() {
    _identityCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  String? _validateIdentity(String? v) {
    final s = (v ?? '').trim();
    if (s.isEmpty) return 'ユーザーIDまたはEメールを入力してください';
    final ok = s.contains('@') ? _emailRe.hasMatch(s) : _usernameRe.hasMatch(s);
    return ok ? null : '形式が正しくありません';
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await widget.service.loginWithPassword(
        _identityCtrl.text.trim(),
        _passwordCtrl.text,
      );
      if (!mounted) return;
      widget.onLoggedIn();
    } on ClientException catch (e) {
      setState(() {
        _error = switch (e.statusCode) {
          // どちらが違うかは明かさない (アカウント探索対策)
          400 => 'ユーザーID/Eメールまたはパスワードが正しくありません',
          429 => '試行回数が多すぎます。しばらく待ってから再度お試しください',
          0 => 'サーバーに接続できません',
          _ => 'ログインに失敗しました (${e.statusCode})',
        };
      });
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ログイン')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: AutofillGroup(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: _identityCtrl,
                      decoration: const InputDecoration(
                        labelText: 'ユーザーIDまたはEメール',
                        prefixIcon: Icon(Icons.person_outline),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress, // '@' を入力しやすく
                      autocorrect: false,
                      enableSuggestions: false,
                      autofillHints: const [AutofillHints.username, AutofillHints.email],
                      textInputAction: TextInputAction.next,
                      validator: _validateIdentity,
                      enabled: !_busy,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _passwordCtrl,
                      decoration: InputDecoration(
                        labelText: 'パスワード',
                        prefixIcon: const Icon(Icons.lock_outline),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
                          onPressed: () => setState(() => _obscure = !_obscure),
                        ),
                      ),
                      obscureText: _obscure,
                      autofillHints: const [AutofillHints.password],
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) => _submit(),
                      validator: (v) =>
                          (v == null || v.isEmpty) ? 'パスワードを入力してください' : null,
                      enabled: !_busy,
                    ),
                    if (_error != null) ...[
                      const SizedBox(height: 12),
                      Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                    ],
                    const SizedBox(height: 24),
                    FilledButton(
                      onPressed: _busy ? null : _submit,
                      child: _busy
                          ? const SizedBox(
                              height: 20, width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text('ログイン'),
                    ),
                    if (widget.onInvite != null) ...[
                      const SizedBox(height: 8),
                      TextButton(
                        onPressed: _busy ? null : widget.onInvite,
                        child: const Text('招待コードで登録'),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
