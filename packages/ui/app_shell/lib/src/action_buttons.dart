import 'package:flutter/material.dart';

/// 画面の操作ボタンの標準の配置(編集・設定・確認の画面で共通)。
///
/// 中央に横並びで、幅は同じ([buttonWidth])、高さは標準より少し高め(48)。並びは
/// 主の操作(塗り。保存・設定する)→ 副の操作(枠線。標準に戻す)→ 削除(枠線・エラーの色)→ 補助(文字だけ。終了)。
/// 使わない操作のラベルは省く。狭いときは折り返す。
class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
    required this.primaryLabel,
    required this.onPrimary,
    this.primaryKey,
    this.primaryIcon,
    this.secondaryLabel,
    this.onSecondary,
    this.secondaryKey,
    this.dangerLabel,
    this.onDanger,
    this.dangerKey,
    this.tertiaryLabel,
    this.onTertiary,
    this.tertiaryKey,
    this.buttonWidth = 180,
  });

  final String primaryLabel;
  final VoidCallback? onPrimary;
  final Key? primaryKey;
  final IconData? primaryIcon;
  final String? secondaryLabel;
  final VoidCallback? onSecondary;
  final Key? secondaryKey;

  /// 削除など、取り消せない操作(エラーの色の枠線)。
  final String? dangerLabel;
  final VoidCallback? onDanger;
  final Key? dangerKey;

  /// 終了など、目立たせない補助の操作(文字だけ)。
  final String? tertiaryLabel;
  final VoidCallback? onTertiary;
  final Key? tertiaryKey;
  final double buttonWidth;

  static const _size = Size(0, 48);

  @override
  Widget build(BuildContext context) {
    final error = Theme.of(context).colorScheme.error;
    final label = Text(primaryLabel);
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      runSpacing: 12,
      children: [
        SizedBox(
          width: buttonWidth,
          child: primaryIcon == null
              ? FilledButton(
                  key: primaryKey ?? const ValueKey('actionPrimary'),
                  style: FilledButton.styleFrom(minimumSize: _size),
                  onPressed: onPrimary,
                  child: label,
                )
              : FilledButton.icon(
                  key: primaryKey ?? const ValueKey('actionPrimary'),
                  style: FilledButton.styleFrom(minimumSize: _size),
                  onPressed: onPrimary,
                  icon: Icon(primaryIcon, size: 18),
                  label: label,
                ),
        ),
        if (secondaryLabel != null)
          SizedBox(
            width: buttonWidth,
            child: OutlinedButton(
              key: secondaryKey ?? const ValueKey('actionSecondary'),
              style: OutlinedButton.styleFrom(minimumSize: _size),
              onPressed: onSecondary,
              child: Text(secondaryLabel!),
            ),
          ),
        if (dangerLabel != null)
          SizedBox(
            width: buttonWidth,
            child: OutlinedButton(
              key: dangerKey ?? const ValueKey('actionDanger'),
              style: OutlinedButton.styleFrom(
                minimumSize: _size,
                foregroundColor: error,
                side: BorderSide(color: error),
              ),
              onPressed: onDanger,
              child: Text(dangerLabel!),
            ),
          ),
        if (tertiaryLabel != null)
          SizedBox(
            width: buttonWidth,
            child: TextButton(
              key: tertiaryKey ?? const ValueKey('actionTertiary'),
              style: TextButton.styleFrom(minimumSize: _size),
              onPressed: onTertiary,
              child: Text(tertiaryLabel!),
            ),
          ),
      ],
    );
  }
}
