enum WidhSizeType {
  s(LayoutConstant.WIDTH_S),
  sm(LayoutConstant.WIDTH_SM),
  m(LayoutConstant.WIDTH_M),
  ml(LayoutConstant.WIDTH_ML),
  l(LayoutConstant.WIDTH_L);

  final double width;
  const WidhSizeType(this.width);
}

class LayoutConstant {
  static const double PADDING_ALL = 5;
  static const double WIDTH_S = 280;
  static const double WIDTH_SM = 320;
  static const double WIDTH_M = 400;
  static const double WIDTH_ML = 560;
  static const double WIDTH_L = 0;
}
