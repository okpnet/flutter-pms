part of '../ut_button.dart';

enum UtButtonIconSize {
  small(12, 2),
  mediam(24, 8),
  large(36, 16);

  final double iconSize;
  final double iconPadingSize;
  const UtButtonIconSize(this.iconSize, this.iconPadingSize);
}

enum UtButtonHight {
  low(36.0),
  mid(48.0),
  high(64.0);

  final double hight;
  const UtButtonHight(this.hight);
}
