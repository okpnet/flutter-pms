import 'package:flutter/material.dart';

import '../model/theme_definition.dart';
import '../tokens/border_field.dart';
import '../tokens/space_field.dart';

/// [ThemeDefinition] から [ThemeData] を組み立てる。
abstract final class ThemeBuilder {
  static ThemeData build(ThemeDefinition definition, Brightness brightness) {
    final metrics = definition.metrics;
    final colors = _colorScheme(definition, brightness);
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(metrics.radius),
    );
    OutlineInputBorder outline(Color color, double width) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(metrics.radius),
      borderSide: BorderSide(color: color, width: width),
    );
    final buttonSize = Size(metrics.buttonWidth, metrics.buttonHeight);
    final iconSize = Size.square(metrics.iconButtonSize);

    return ThemeData(
      useMaterial3: true,
      colorScheme: colors,
      fontFamily: definition.fontFamily,
      extensions: [
        SpaceField(
          formFieldPd: metrics.formFieldPadding,
          menuFieldPd: metrics.menuFieldPadding,
          spacing: metrics.spacing,
        ),
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
      cardTheme: CardThemeData(shape: shape),
      dialogTheme: DialogThemeData(shape: shape),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(metrics.radius / 2),
        ),
      ),
    );
  }

  /// seed から配色を生成し、個別指定の色を重ねる。
  ///
  /// `dark` が無いときは `light` の seed だけからダーク配色を生成する
  /// (ライト用の個別指定色はダークで破綻するため重ねない)。
  static ColorScheme _colorScheme(
    ThemeDefinition definition,
    Brightness brightness,
  ) {
    final explicit = brightness == Brightness.dark ? definition.dark : null;
    final palette = brightness == Brightness.dark
        ? (definition.dark ?? definition.light)
        : definition.light;
    final useOverrides = brightness == Brightness.light || explicit != null;
    final o = useOverrides ? palette.overrides : const <String, Color>{};
    return ColorScheme.fromSeed(
      seedColor: palette.seed,
      brightness: brightness,
    ).copyWith(
      primary: o['primary'],
      onPrimary: o['onPrimary'],
      secondary: o['secondary'],
      onSecondary: o['onSecondary'],
      tertiary: o['tertiary'],
      onTertiary: o['onTertiary'],
      error: o['error'],
      onError: o['onError'],
      surface: o['surface'],
      onSurface: o['onSurface'],
      outline: o['outline'],
    );
  }
}
