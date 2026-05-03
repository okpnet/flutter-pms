import 'package:utility_widget/buttons/constants/ut_button_constant.dart';
import 'package:utility_widget/buttons/constants/ut_button_size_style.dart';

import '../../styles/constans/ut_space_style.dart';
import '../../core/ut_widget_design.dart';
import '../../extensions/ut_theme_data_extension.dart';

mixin UtPrimaryButtonMixin on Widget {
  UtButtonSizeStyle get sizeStyles;

  ButtonStyle getPrimaryStyle(BuildContext context, bool expanded) {
    final themeData = Theme.of(context);
    final colors = themeData.getPrimaryColors();
    final buttonTheme = themeData.buttonTheme;
    final size = Size(
      expanded ? double.infinity : buttonTheme.minWidth,
      sizeStyles.size,
    );

    return ElevatedButton.styleFrom(
      backgroundColor: colors.primary,
      foregroundColor: colors.onPrimary,
      minimumSize: size,
      elevation: UtButtonConstant.elevation,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }

  ButtonStyle getPrimaryWithIconStyle(
    BuildContext context, {
    bool expanded = false,
  }) {
    final themeData = Theme.of(context);
    final colors = themeData.getPrimaryColors();
    final buttonTheme = themeData.buttonTheme;
    final size = Size(
      expanded ? double.infinity : buttonTheme.minWidth,
      sizeStyles.size,
    );

    return ElevatedButton.styleFrom(
      backgroundColor: colors.primary,
      foregroundColor: colors.onPrimary,
      elevation: UtButtonConstant.elevation,
      minimumSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }

  ButtonStyle getPrimaryIconStyle(BuildContext context) {
    // final themeData = Theme.of(context);
    // final colors = themeData.getPrimaryColors();

    final size = Size(
      sizeStyles.size / 2 + UtSpaceStyle.sm.value,
      sizeStyles.size / 2 + UtSpaceStyle.sm.value,
    );
    return ElevatedButton.styleFrom(
      // backgroundColor: colors.primary,
      // foregroundColor: colors.onPrimary,
      elevation: UtButtonConstant.elevation,
      minimumSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }
}
