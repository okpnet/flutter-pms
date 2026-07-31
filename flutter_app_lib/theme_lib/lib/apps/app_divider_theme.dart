import 'package:theme_lib/constants/imports.dart';

import '../fields/field_extenssions.dart';

///ディバイダー
abstract class AppDividerTheme {
  static DividerThemeData get dividerThemeData => DividerThemeData(
    radius: AppRadius.edgeBorderRadius,
    space: SpaceField().spacing,
    thickness: AppBorder.activeBorderWidth,
  );
}
