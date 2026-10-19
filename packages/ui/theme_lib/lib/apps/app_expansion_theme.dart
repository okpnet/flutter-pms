import 'package:theme_lib/constants/constant.dart';
import 'package:theme_lib/fields/field_extenssions.dart';

abstract class AppExpansionTheme {
  static ExpansionTileThemeData get expansionTileTheme {
    return ExpansionTileThemeData(
      tilePadding: SpaceField().all,
      expandedAlignment: .centerLeft,
      childrenPadding: SpaceField().all,
    );
  }
}
