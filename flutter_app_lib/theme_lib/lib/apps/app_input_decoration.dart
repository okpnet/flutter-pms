import 'package:theme_lib/constants/constant.dart';

///アプリ標準のインプットテーマ
abstract class AppInputDecoration {
  ///アプリ標準のインプットテーマ
  static const InputDecorationTheme appThemeData = InputDecorationTheme(
    enabledBorder: OutlineInputBorder(borderRadius: AppRadius.edgeBorderRadius),
  );
}
