import 'package:flutter/material.dart';

import '../tokens/border_field.dart';

/// ボタンやチェックボックスの見た目の種類。
enum ThemeVariant {
  /// 塗りつぶし
  primary,

  /// 枠線
  secondary,

  /// 文字（アイコン）のみ
  tertiary,
}

/// [theme] のボタンテーマを土台に、[variant] の見た目を重ねる。
///
/// 種類ごとの指定を優先し、未指定の項目（サイズ・形状）を土台で補う。
ButtonStyle filledButtonStyle(ThemeData theme, ThemeVariant variant) {
  final base = theme.filledButtonTheme.style ?? const ButtonStyle();
  return _variantStyle(theme, variant, FilledButton.styleFrom).merge(base);
}

/// [filledButtonStyle]のIconButton版。
ButtonStyle iconButtonStyle(ThemeData theme, ThemeVariant variant) {
  final base = theme.iconButtonTheme.style ?? const ButtonStyle();
  return _variantStyle(theme, variant, IconButton.styleFrom).merge(base);
}

typedef _StyleFrom =
    ButtonStyle Function({
      Color? backgroundColor,
      Color? foregroundColor,
      double? elevation,
      BorderSide? side,
    });

ButtonStyle _variantStyle(
  ThemeData theme,
  ThemeVariant variant,
  _StyleFrom styleFrom,
) {
  final primary = theme.colorScheme.primary;
  final width = BorderField.of(theme).borderWidth;
  return switch (variant) {
    ThemeVariant.primary => styleFrom(
      backgroundColor: primary,
      foregroundColor: theme.colorScheme.onPrimary,
    ),
    ThemeVariant.secondary => styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: primary,
      elevation: 0,
      side: BorderSide(width: width, color: primary),
    ),
    ThemeVariant.tertiary => styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: primary,
      elevation: 0,
    ),
  };
}

CheckboxThemeData checkboxVariantTheme(ThemeData theme, ThemeVariant variant) {
  final colors = theme.colorScheme;
  return switch (variant) {
    // チェック時に背景がメインカラーで塗りつぶされる標準スタイル
    ThemeVariant.primary => CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith(
        (states) =>
            states.contains(WidgetState.selected) ? colors.primary : null,
      ),
      checkColor: WidgetStatePropertyAll(colors.onPrimary),
    ),
    // 背景は塗らず、枠線とチェックマークに色をつける
    ThemeVariant.secondary => CheckboxThemeData(
      fillColor: const WidgetStatePropertyAll(Colors.transparent),
      side: WidgetStateBorderSide.resolveWith(
        (states) => BorderSide(
          width: 2,
          color: states.contains(WidgetState.selected)
              ? colors.primary
              : colors.outline,
        ),
      ),
      checkColor: WidgetStatePropertyAll(colors.primary),
    ),
    // 枠線なし。チェックマークだけが浮かび上がる
    ThemeVariant.tertiary => CheckboxThemeData(
      fillColor: const WidgetStatePropertyAll(Colors.transparent),
      side: const BorderSide(color: Colors.transparent, width: 0),
      checkColor: WidgetStatePropertyAll(colors.primary),
    ),
  };
}
