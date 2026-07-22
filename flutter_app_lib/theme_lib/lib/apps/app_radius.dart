import '../constants/constant.dart';

abstract class AppRadius {
  // すべて const で定義するのが最大のポイント
  static const double smallValue = 3.0;
  static const double largeValue = 12.0;

  static const Radius smallRadius = Radius.circular(smallValue);
  static const Radius largeRadius = Radius.circular(largeValue);

  static const BorderRadius smallBorderRadius = BorderRadius.all(smallRadius);
  static const BorderRadius largeBorderRadius = BorderRadius.all(largeRadius);
}
