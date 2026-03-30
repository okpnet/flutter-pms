part of '../ut_button.dart';

enum UtButtonEnums { primary, secondary, tertiary }

enum UtButtonSize {
  small(UtButtonStyleConstant.ICON_S, UtButtonStyleConstant.ICON_PADING_S),
  mediam(UtButtonStyleConstant.ICON_M, UtButtonStyleConstant.ICON_PADING_M),
  large(UtButtonStyleConstant.ICON_L, UtButtonStyleConstant.ICON_PADING_L);

  final double iconSize;
  final double iconPadingSize;
  const UtButtonSize(this.iconSize, this.iconPadingSize);
}
