part of 'button.dart';

enum ButtonStyleType { primary, secondary, tertiary }

enum ButtonSize {
  small(ButtonStyleConstant.ICON_S, ButtonStyleConstant.ICON_PADING_S),
  mediam(ButtonStyleConstant.ICON_M, ButtonStyleConstant.ICON_PADING_M),
  large(ButtonStyleConstant.ICON_L, ButtonStyleConstant.ICON_PADING_L);

  final double iconSize;
  final double iconPadingSize;
  const ButtonSize(this.iconSize, this.iconPadingSize);
}
