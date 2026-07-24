import 'package:theme_lib/constants/constant.dart';

typedef PrimaryButton = ElevatedButton;
typedef SecondaryButton = OutlinedButton;
typedef TertiaryButton = TextButton;

abstract class AppButton {
  static const double elevation = 2;
  static const double borderWidth = 3;

  static const double height = 46;
  static const double width = 128;

  static const Size minimumSize = Size(width, height);
  static const Size fullWidthSize = Size(double.infinity, height);
}
