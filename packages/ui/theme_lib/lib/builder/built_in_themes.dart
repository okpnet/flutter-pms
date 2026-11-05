import 'package:flutter/painting.dart';

import '../model/theme_definition.dart';

/// 既定のテーマ。画面案(`tools/open-design`の`design/theme.md`・`flutter/app_theme.dart`・`styles.css`)の
/// デザイントークンと同じ値を使う。ライトとダークは、それぞれ独立に調整した配色。
final ThemeDefinition openDesignTheme = ThemeDefinition(
  id: 'default',
  name: 'Default',
  light: ThemePalette(
    seed: const Color(0xFF0B6B6F),
    overrides: const {
      'primary': Color(0xFF0B6B6F), // accent
      'onPrimary': Color(0xFFFFFFFF), // accent-ink
      'primaryContainer': Color(0xFFDCEFEF), // accent-soft
      'onPrimaryContainer': Color(0xFF0B6B6F),
      'secondary': Color(0xFF3B78A8), // seg-2
      'onSecondary': Color(0xFFFFFFFF),
      'tertiary': Color(0xFF7B8895), // seg-3
      'onTertiary': Color(0xFFFFFFFF),
      'error': Color(0xFFB3261E), // danger
      'onError': Color(0xFFFFFFFF),
      'errorContainer': Color(0xFFFBE3E1), // danger-soft
      'onErrorContainer': Color(0xFFB3261E),
      'background': Color(0xFFF2F5F6), // bg
      'surface': Color(0xFFFFFFFF),
      'onSurface': Color(0xFF12202A), // ink
      'surfaceContainerHighest': Color(0xFFEAF0F1), // surface-2
      'onSurfaceVariant': Color(0xFF4F5E69), // muted
      'outline': Color(
        0xFF7C8B96,
      ), // 入力欄・ボタンの枠(罫線 line より濃くして、背景との差を 3:1 以上にする)
      'outlineVariant': Color(0xFFD3DCE1), // line(カード・区切りの罫線)
      'focus': Color(0xFF1A5FD0), // --focus(フォーカスリング)
    },
  ),
  dark: ThemePalette(
    seed: const Color(0xFF5CC3C6),
    overrides: const {
      'primary': Color(0xFF5CC3C6),
      'onPrimary': Color(0xFF062A2C),
      'primaryContainer': Color(0xFF1B3F43),
      'onPrimaryContainer': Color(0xFF5CC3C6),
      'secondary': Color(0xFF7DB4E0),
      'onSecondary': Color(0xFF062A2C),
      'tertiary': Color(0xFF98A6B2),
      'onTertiary': Color(0xFF062A2C),
      'error': Color(0xFFFF8A80),
      'onError': Color(0xFF062A2C),
      'errorContainer': Color(0xFF4A1F1D),
      'onErrorContainer': Color(0xFFFF8A80),
      'background': Color(0xFF0E171D),
      'surface': Color(0xFF16232B),
      'onSurface': Color(0xFFE8EFF2),
      'surfaceContainerHighest': Color(0xFF1E2F39),
      'onSurfaceVariant': Color(0xFFA5B4BD),
      'outline': Color(0xFF5B7384),
      'outlineVariant': Color(0xFF2D4250),
      'focus': Color(0xFF8AB4FF),
    },
  ),
  metrics: const ThemeMetrics(
    spacing: 4,
    formFieldPadding: 4,
    menuFieldPadding: 8,
    radius: 8, // --radius(ボタン・入力)
    cardRadius: 12, // --radius-lg(カード・ダイアログ・シート)
    fullRadius: 32,
    borderWidth: 1,
    activeBorderWidth: 2,
    buttonHeight: 44, // 最小のタップ領域 44x44
    buttonWidth: 44,
    buttonElevation: 0,
    iconButtonSize: 44,
  ),
);

/// 組み込みテーマ。既定の1つだけで、削除できない。
/// `ocean`・`forest` などの追加のテーマは外部のJSONファイル(`themes/`、[ThemeAssets])で、
/// [ThemeManager.importAssets] から取り込む。
final List<ThemeDefinition> builtInThemes = List.unmodifiable([
  openDesignTheme,
]);
