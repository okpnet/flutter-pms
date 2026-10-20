import 'package:flutter/material.dart';

/// テキストの色・状態パターン
enum TextColorStyleMode {
  /// テーマの標準色
  defaultMode,

  /// エラーカラー
  error,

  /// 補足や説明文用の一歩引いたカラー
  secondary,
}

extension BuildContextTextX on BuildContext {
  /// [size]のスタイルを取得し、[color]の状態に応じた色を重ねる。
  TextStyle textStyleMode({
    TextStyle? Function(TextTheme textTheme)? size,
    TextColorStyleMode color = TextColorStyleMode.defaultMode,
  }) {
    final theme = Theme.of(this);
    final base = (size ?? (t) => t.bodyMedium)(theme.textTheme);
    final style = base ?? const TextStyle();
    return switch (color) {
      TextColorStyleMode.defaultMode => style,
      TextColorStyleMode.error => style.copyWith(
        color: theme.colorScheme.error,
        fontWeight: FontWeight.w500,
      ),
      TextColorStyleMode.secondary => style.copyWith(
        color: theme.colorScheme.onSurfaceVariant,
      ),
    };
  }
}
