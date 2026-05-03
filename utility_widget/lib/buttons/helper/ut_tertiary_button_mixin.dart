import '../../styles/constans/ut_space_style.dart';
import '../../core/ut_widget_design.dart';
import '../constants/ut_button_constant.dart';
import '../constants/ut_button_size_style.dart';

mixin UtTertiaryButtonMixin on Widget {
  UtButtonSizeStyle get sizeStyles;
  ButtonStyle getTertiarStyle(BuildContext context, bool expanded) {
    final themeData = Theme.of(context);
    final buttonTheme = themeData.buttonTheme;
    final size = Size(
      expanded ? double.infinity : buttonTheme.minWidth,
      sizeStyles.size,
    );
    return TextButton.styleFrom(
      minimumSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }

  ButtonStyle getTertiaryIconStyle(BuildContext context) {
    // final themeData = Theme.of(context);
    // final colors = themeData.getPrimaryColors();
    final size = Size(
      sizeStyles.size / 2 + UtSpaceStyle.sm.value,
      sizeStyles.size / 2 + UtSpaceStyle.sm.value,
    );
    return TextButton.styleFrom(
      // foregroundColor: colors.primary,
      minimumSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }
}
