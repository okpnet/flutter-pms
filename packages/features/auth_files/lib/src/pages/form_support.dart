import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';

import '../failure_message.dart';
import '../i18n/strings_provider.dart';

/// ログイン前の画面の枠(画面案の `logout-wrap` + `login-card`)。
/// サイドバー・タイトルバーを持たず、中央に幅を絞ったカード(エンブレム・見出し・本文)を置く。
class AuthCard extends StatelessWidget {
  const AuthCard({super.key, required this.heading, required this.children});

  final String heading;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 16,
                  children: [
                    Icon(
                      Icons.precision_manufacturing_outlined,
                      size: 48,
                      color: theme.colorScheme.primary,
                    ),
                    Semantics(
                      header: true,
                      child: Text(
                        heading,
                        style: theme.textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ...children,
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

/// 入力欄(画面案の `field-row`)。ラベルに「必須」の印、欄の下に項目ごとのエラー。
/// フォーカスが外れたときに [onBlur] で検証する。
class FieldRow extends StatelessWidget {
  const FieldRow({
    super.key,
    required this.controller,
    required this.label,
    required this.requiredLabel,
    this.error,
    this.onBlur,
    this.onSubmitted,
    this.obscure = false,
    this.enabled = true,
    this.autofocus = false,
    this.keyboardType,
    this.maxLength,
  });

  final TextEditingController controller;
  final String label;

  /// 「必須」(多言語)。
  final String requiredLabel;
  final String? error;
  final VoidCallback? onBlur;
  final ValueChanged<String>? onSubmitted;
  final bool obscure;
  final bool enabled;
  final bool autofocus;
  final TextInputType? keyboardType;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Row(
          spacing: 8,
          children: [
            Flexible(child: Text(label, style: theme.textTheme.labelLarge)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                requiredLabel,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Focus(
          onFocusChange: (hasFocus) {
            if (!hasFocus) onBlur?.call();
          },
          child: TextField(
            controller: controller,
            enabled: enabled,
            autofocus: autofocus,
            obscureText: obscure,
            keyboardType: keyboardType,
            maxLength: maxLength,
            onSubmitted: onSubmitted,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              isDense: true,
              counterText: '',
              errorText: error,
            ),
          ),
        ),
      ],
    );
  }
}

/// 案内の帯。[isError] が true なら画面案の `login-err`(警告・赤)、false なら `flash`(確認・アクセント色)。
class NoticeBanner extends StatelessWidget {
  const NoticeBanner(this.text, {super.key, this.isError = true});

  final String text;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final color = isError ? scheme.onErrorContainer : scheme.onPrimaryContainer;
    return Semantics(
      liveRegion: true,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isError ? scheme.errorContainer : scheme.primaryContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Icon(
              isError ? Icons.error_outline : Icons.check_circle_outline,
              size: 20,
              color: color,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: color, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 帯のないエラー・成功の文言(共有ファイルなど、枠の中の画面で使う)。
class MessageLine extends StatelessWidget {
  const MessageLine(this.text, {super.key, this.isError = true});

  final String text;
  final bool isError;

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: TextStyle(
      color: isError
          ? Theme.of(context).colorScheme.error
          : Theme.of(context).colorScheme.primary,
    ),
  );
}

/// 処理中・エラー文言を持つ画面の共通部分(通信のボタンを二重に押させない)。
mixin BusyAction<T extends ConsumerStatefulWidget> on ConsumerState<T> {
  bool busy = false;
  String? errorText;

  /// [body] を実行する。失敗は [errorText] にして、この機能が発生元のものだけをログに残す。
  /// 成功したら true。
  Future<bool> run(
    Future<void> Function() body, {
    String operation = 'auth_files',
    bool codeEntry = false,
  }) async {
    if (busy) return false;
    setState(() {
      busy = true;
      errorText = null;
    });
    try {
      await body();
      if (mounted) setState(() => busy = false);
      return true;
    } catch (e, st) {
      final t = ref.read(authFilesStringsProvider);
      if (e is PbException) {
        ref.read(loggerProvider).warn('[auth_files] $operation', ex: e);
      } else if (e is! ArgumentError && e is! UnsupportedError) {
        ref.read(loggerProvider).error(
          '[auth_files] $operation',
          ex: e,
          trace: st,
        );
      }
      if (mounted) {
        setState(() {
          busy = false;
          errorText = failureMessage(t, e, codeEntry: codeEntry);
        });
      }
      return false;
    }
  }
}
