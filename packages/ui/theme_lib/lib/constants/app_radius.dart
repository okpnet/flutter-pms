import 'constant.dart';

///縁の丸み
abstract class AppRadius {
  // すべて const で定義するのが最大のポイント
  static const double edgeValue = 3.0;
  static const double contentsValue = 12.0;
  static const double fullValue = 32.0;

  static const Radius edgeRadius = Radius.circular(edgeValue);
  static const Radius contentsRadius = Radius.circular(contentsValue);
  static const Radius fullRadius = Radius.circular(fullValue);

  static const BorderRadius edgeBorderRadius = BorderRadius.all(edgeRadius);
  static const BorderRadius contentsBorderRadius = BorderRadius.all(
    contentsRadius,
  );
  static const BorderRadius fullBorderRadius = BorderRadius.all(fullRadius);
}
