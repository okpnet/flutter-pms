import 'package:theme_lib/constants/constant.dart';

///ボタン標準値
abstract class AppButton {
  static const double elevation = 2;
  static const double borderWidth = 0.8;

  static const double height = 46;
  static const double width = 128;

  static const Size minimumSize = Size(width, height);
  static const Size fullWidthSize = Size(double.infinity, height);
}
