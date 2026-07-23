import 'package:theme_lib/constants/constant.dart';

import 'apps.dart';

ThemeData appTheme = ThemeData(
  inputDecorationTheme: AppInputDecoration.appThemeData,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: AppButton.elevation,
      shape: const RoundedRectangleBorder(
        borderRadius: AppRadius.edgeBorderRadius,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: AppButton.elevation,
      shape: const RoundedRectangleBorder(
        borderRadius: AppRadius.edgeBorderRadius,
      ),
    ),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      minimumSize: AppIcon.mxm,
      shape: const RoundedRectangleBorder(
        borderRadius: AppRadius.edgeBorderRadius,
      ),
    ),
  ),
);
