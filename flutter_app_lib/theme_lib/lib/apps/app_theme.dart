import 'package:theme_lib/constants/constant.dart';
import 'package:theme_lib/fields/field_extenssions.dart';

import 'apps.dart';

ThemeData appTheme = ThemeData(
  extensions: [SpaceField(), BorderField()],
  filledButtonTheme: AppButtonTheme.filledButtonThemeData,
  inputDecorationTheme: AppInputDecoration.appThemeData,
  iconButtonTheme: AppButtonTheme.iconButtonThemeData,
  checkboxTheme: AppCheckboxTheme.themeData,
  dropdownMenuTheme: DropdownMenuThemeData(
    ///inputDecorationThemeと共有
  ),
);
