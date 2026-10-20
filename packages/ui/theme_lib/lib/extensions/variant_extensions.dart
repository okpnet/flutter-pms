import 'package:flutter/material.dart';

import 'theme_variant.dart';

Widget _withTheme(
  BuildContext context,
  Widget child,
  ThemeData Function(ThemeData theme) apply,
) => Theme(data: apply(Theme.of(context)), child: child);

extension FilledButtonVariantX on FilledButton {
  Widget toVariant(BuildContext context, ThemeVariant variant) => _withTheme(
    context,
    this,
    (theme) => theme.copyWith(
      filledButtonTheme: FilledButtonThemeData(
        style: filledButtonStyle(theme, variant),
      ),
    ),
  );

  Widget toPrimary(BuildContext context) =>
      toVariant(context, ThemeVariant.primary);
  Widget toSecondary(BuildContext context) =>
      toVariant(context, ThemeVariant.secondary);
  Widget toTertiary(BuildContext context) =>
      toVariant(context, ThemeVariant.tertiary);
}

extension IconButtonVariantX on IconButton {
  Widget toVariant(BuildContext context, ThemeVariant variant) => _withTheme(
    context,
    this,
    (theme) => theme.copyWith(
      iconButtonTheme: IconButtonThemeData(
        style: iconButtonStyle(theme, variant),
      ),
    ),
  );

  Widget toPrimary(BuildContext context) =>
      toVariant(context, ThemeVariant.primary);
  Widget toSecondary(BuildContext context) =>
      toVariant(context, ThemeVariant.secondary);
  Widget toTertiary(BuildContext context) =>
      toVariant(context, ThemeVariant.tertiary);
}

extension CheckboxVariantX on Checkbox {
  Widget toVariant(BuildContext context, ThemeVariant variant) => _withTheme(
    context,
    this,
    (theme) =>
        theme.copyWith(checkboxTheme: checkboxVariantTheme(theme, variant)),
  );

  Widget toPrimary(BuildContext context) =>
      toVariant(context, ThemeVariant.primary);
  Widget toSecondary(BuildContext context) =>
      toVariant(context, ThemeVariant.secondary);
  Widget toTertiary(BuildContext context) =>
      toVariant(context, ThemeVariant.tertiary);
}

extension CheckboxListTileVariantX on CheckboxListTile {
  Widget toVariant(BuildContext context, ThemeVariant variant) => _withTheme(
    context,
    this,
    (theme) =>
        theme.copyWith(checkboxTheme: checkboxVariantTheme(theme, variant)),
  );

  Widget toPrimary(BuildContext context) =>
      toVariant(context, ThemeVariant.primary);
  Widget toSecondary(BuildContext context) =>
      toVariant(context, ThemeVariant.secondary);
  Widget toTertiary(BuildContext context) =>
      toVariant(context, ThemeVariant.tertiary);
}

extension ButtonStyleX on ButtonStyle {
  /// 最小サイズ制約を外し、親の大きさに合わせる。
  ButtonStyle allowParentSize() =>
      copyWith(minimumSize: const WidgetStatePropertyAll(Size.zero));
}
