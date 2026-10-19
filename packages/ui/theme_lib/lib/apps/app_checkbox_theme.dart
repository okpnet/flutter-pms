import '../constants/constant.dart';

abstract class AppCheckboxTheme {
  static CheckboxThemeData get themeData => CheckboxThemeData(
    shape: const RoundedRectangleBorder(
      borderRadius: AppRadius.edgeBorderRadius,
    ),
  );
}
