import 'dart:async';

enum UtColorStyle { primary, secondary, tertiary }

enum UtDirectionType {
  none(0x0),
  top(0x1),
  right(0x2),
  bottom(0x4),
  left(0x8),
  all(0xF);

  final int bit;
  const UtDirectionType(this.bit);
}

enum UtWidhSizeType {
  s(UtLayoutConstant.WIDTH_S),
  sm(UtLayoutConstant.WIDTH_SM),
  m(UtLayoutConstant.WIDTH_M),
  ml(UtLayoutConstant.WIDTH_ML),
  l(UtLayoutConstant.WIDTH_L);

  final double width;
  const UtWidhSizeType(this.width);
}

class UtLayoutConstant {
  static const int TOP = 0x1;
  static const int RIGHT = 0x1;
  static const int BOTTOM = 0x1;
  static const int LEFT = 0x1;
  static const int ALL = 0xF;
  static const double PADDING_ALL = 5;
  static const double DEFAULT_MARGIN = 5;
  static const double MA_ALL = 5;
  static const double WIDTH_S = 280;
  static const double WIDTH_SM = 320;
  static const double WIDTH_M = 400;
  static const double WIDTH_ML = 560;
  static const double WIDTH_L = 0;
  //NavigationRailに切り替える画面幅
  static const double desktopStyleWidthBoundary = 600;
}
