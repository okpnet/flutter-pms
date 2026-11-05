import 'package:flutter/material.dart';

import '../model/theme_definition.dart';
import '../tokens/app_colors.dart';
import '../tokens/border_field.dart';
import '../tokens/space_field.dart';

/// [ThemeDefinition] から [ThemeData] を組み立てる。
abstract final class ThemeBuilder {
  /// 日本語を表示するフォントの代替。OS に入っているフォントだけを使い、フォントは同梱しない
  /// (画面案の Noto Sans JP は同梱しないため外した)。同梱が必要になったときはメイリオにする。
  /// [ThemeDefinition.fontFamily] があればそちらが先で、見つからない文字をここで補う。
  static const fontFamilyFallback = ['Hiragino Sans', 'Yu Gothic UI', 'Meiryo'];

  static ThemeData build(ThemeDefinition definition, Brightness brightness) {
    final metrics = definition.metrics;
    final colors = _colorScheme(definition, brightness);
    final overrides = _overrides(definition, brightness);
    final background = overrides['background'];
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(metrics.radius),
    );
    final cardRadius = BorderRadius.circular(
      metrics.cardRadius ?? metrics.radius,
    );
    final line = BorderSide(
      color: colors.outlineVariant,
      width: metrics.borderWidth,
    );
    OutlineInputBorder outline(Color color, double width) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(metrics.radius),
      borderSide: BorderSide(color: color, width: width),
    );
    final buttonSize = Size(metrics.buttonWidth, metrics.buttonHeight);
    final iconSize = Size.square(metrics.iconButtonSize);

    final theme = ThemeData(
      useMaterial3: true,
      colorScheme: colors,
      scaffoldBackgroundColor: background,
      fontFamily: definition.fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      extensions: [
        SpaceField(
          formFieldPd: metrics.formFieldPadding,
          menuFieldPd: metrics.menuFieldPadding,
          spacing: metrics.spacing,
        ),
        AppColors.fromScheme(colors, focus: overrides['focus']),
        BorderField(
          radius: metrics.radius,
          fullRadius: metrics.fullRadius,
          borderWidth: metrics.borderWidth,
          activeBorderWidth: metrics.activeBorderWidth,
        ),
      ],
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: buttonSize,
          elevation: metrics.buttonElevation,
          shape: shape,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: buttonSize,
          side: BorderSide(color: colors.outline, width: metrics.borderWidth),
          shape: shape,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          minimumSize: iconSize,
          padding: EdgeInsets.zero,
          shape: shape,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        contentPadding: EdgeInsets.all(metrics.formFieldPadding + 8),
        border: outline(colors.outline, metrics.borderWidth),
        enabledBorder: outline(colors.outline, metrics.borderWidth),
        focusedBorder: outline(colors.primary, metrics.activeBorderWidth),
        errorBorder: outline(colors.error, metrics.borderWidth),
        focusedErrorBorder: outline(colors.error, metrics.activeBorderWidth),
      ),
      // 面は影ではなく罫線で区切る(画面案のカード・タイトルバー)
      cardTheme: CardThemeData(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: colors.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: cardRadius, side: line),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: colors.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: cardRadius),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colors.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: cardRadius.topLeft),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colors.surface,
        foregroundColor: colors.onSurface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        shape: Border(bottom: line),
      ),
      dividerTheme: DividerThemeData(
        color: colors.outlineVariant,
        space: 1,
        thickness: 1,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: colors.primaryContainer,
        labelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: colors.onPrimaryContainer,
        ),
        side: BorderSide.none,
        shape: const StadiumBorder(),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: colors.surface,
        indicatorColor: colors.primaryContainer,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: colors.surface,
        surfaceTintColor: Colors.transparent,
        indicatorColor: colors.primaryContainer,
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(metrics.radius / 2),
        ),
      ),
    );
    return theme.copyWith(
      focusColor: overrides['focus'],
      textTheme: _textTheme(theme.textTheme),
    );
  }

  /// 文字の大きさ・太さ・行の高さ(画面案の 28 / 20 / 16 / 14 / 12。本文は行高 1.6)。
  /// 色は `ColorScheme` に従うため、ここでは大きさだけを決める。
  static TextTheme _textTheme(TextTheme base) => base.copyWith(
    headlineMedium: base.headlineMedium?.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 1.3,
    ),
    titleLarge: base.titleLarge?.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      height: 1.4,
    ),
    titleMedium: base.titleMedium?.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: base.bodyLarge?.copyWith(fontSize: 16, height: 1.6),
    bodyMedium: base.bodyMedium?.copyWith(fontSize: 14, height: 1.6),
    labelSmall: base.labelSmall?.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );

  /// 配色の個別指定の色。`dark` が無いときのダークは、ライト用の指定を重ねない
  /// (ライト用の個別指定色はダークで破綻するため)。
  static Map<String, Color> _overrides(
    ThemeDefinition definition,
    Brightness brightness,
  ) {
    final explicit = brightness == Brightness.dark ? definition.dark : null;
    final palette = brightness == Brightness.dark
        ? (definition.dark ?? definition.light)
        : definition.light;
    final useOverrides = brightness == Brightness.light || explicit != null;
    return useOverrides ? palette.overrides : const <String, Color>{};
  }

  /// seed から配色を生成し、個別指定の色を重ねる。
  ///
  /// `dark` が無いときは `light` の seed だけからダーク配色を生成する
  /// (ライト用の個別指定色はダークで破綻するため重ねない)。
  static ColorScheme _colorScheme(
    ThemeDefinition definition,
    Brightness brightness,
  ) {
    final palette = brightness == Brightness.dark
        ? (definition.dark ?? definition.light)
        : definition.light;
    final o = _overrides(definition, brightness);
    return ColorScheme.fromSeed(
      seedColor: palette.seed,
      brightness: brightness,
    ).copyWith(
      primary: o['primary'],
      onPrimary: o['onPrimary'],
      primaryContainer: o['primaryContainer'],
      onPrimaryContainer: o['onPrimaryContainer'],
      secondary: o['secondary'],
      onSecondary: o['onSecondary'],
      tertiary: o['tertiary'],
      onTertiary: o['onTertiary'],
      error: o['error'],
      onError: o['onError'],
      errorContainer: o['errorContainer'],
      onErrorContainer: o['onErrorContainer'],
      surface: o['surface'],
      onSurface: o['onSurface'],
      surfaceContainerHighest: o['surfaceContainerHighest'],
      onSurfaceVariant: o['onSurfaceVariant'],
      outline: o['outline'],
      outlineVariant: o['outlineVariant'],
    );
  }
}
