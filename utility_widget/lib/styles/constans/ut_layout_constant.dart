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
  static const double PADDING_ALL = 5;
  static const double WIDTH_S = 280;
  static const double WIDTH_SM = 320;
  static const double WIDTH_M = 400;
  static const double WIDTH_ML = 560;
  static const double WIDTH_L = 0;
}
