import 'package:flutter/material.dart';

/// 確認のダイアログ(取り消し / 実行)。実行を選んだときだけ true を返す(閉じる・取り消しは false)。
///
/// [destructive] が真なら、実行のボタンをエラーの色にする(削除など)。確認のダイアログの標準。
Future<bool> showConfirmDialog(
  BuildContext context, {
  required String title,
  required String message,
  required String confirmLabel,
  required String cancelLabel,
  bool destructive = false,
}) async {
  final ok = await showDialog<bool>(
    context: context,
    builder: (context) {
      final scheme = Theme.of(context).colorScheme;
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            key: const ValueKey('confirmCancel'),
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelLabel),
          ),
          FilledButton(
            key: const ValueKey('confirmOk'),
            style: destructive
                ? FilledButton.styleFrom(
                    backgroundColor: scheme.error,
                    foregroundColor: scheme.onError,
                  )
                : null,
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(confirmLabel),
          ),
        ],
      );
    },
  );
  return ok == true;
}
