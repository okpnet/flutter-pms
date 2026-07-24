import 'package:theme_lib/constants/constant.dart';
import 'package:theme_lib/fields/field_extenssions.dart';

import 'apps.dart';

ThemeData appTheme = ThemeData(
  extensions: [SpaceField(), BorderField()],
  inputDecorationTheme: AppInputDecoration.appThemeData,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: AppButton.elevation,
      minimumSize: AppButton.minimumSize,
      shape: const RoundedRectangleBorder(
        borderRadius: AppRadius.edgeBorderRadius,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: AppButton.elevation,
      minimumSize: AppButton.minimumSize,
      side: BorderSide(width: AppButton.borderWidth),
      shape: const RoundedRectangleBorder(
        borderRadius: AppRadius.edgeBorderRadius,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: AppButton.minimumSize,
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
  checkboxTheme: CheckboxThemeData(
    shape: const RoundedRectangleBorder(
      borderRadius: AppRadius.edgeBorderRadius,
    ),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    ///inputDecorationThemeと共有
  ),
);
