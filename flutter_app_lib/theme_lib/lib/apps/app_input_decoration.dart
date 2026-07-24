import 'package:theme_lib/constants/constant.dart';

///アプリ標準のインプットテーマ
abstract class AppInputDecoration {
  ///アプリ標準のインプットテーマ
  static const InputDecorationTheme appThemeData = InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: AppRadius.edgeBorderRadius,
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: AppBorder.borderWidth,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: AppRadius.edgeBorderRadius,
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: AppBorder.activeBorderWidth,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: AppRadius.edgeBorderRadius,
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: AppBorder.borderWidth,
      ),
    ),
  );
}
