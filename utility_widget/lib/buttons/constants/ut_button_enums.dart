part of '../ut_button.dart';

enum UtButtonSize {
  small(12, 2),
  mediam(24, 8),
  large(36, 16);

  final double iconSize;
  final double iconPadingSize;
  const UtButtonSize(this.iconSize, this.iconPadingSize);
}
