// Project imports:
import '../../core/ut_widget_design.dart';
import '../../extensions/ut_theme_data_extension.dart';
import '../../styles/constans/ut_space_style.dart';
import '../constants/ut_button_constant.dart';
import '../constants/ut_button_size_style.dart';

mixin UtSecoundaryButtonMixin on Widget {
  UtButtonSizeStyle get sizeStyles;
  //セカンダリボタンスタイルヘルパー
  ButtonStyle getSecondaryStyle(BuildContext context, bool expanded) {
    final themeData = Theme.of(context);
    final colors = themeData.getPrimaryColors();
    final buttonTheme = themeData.buttonTheme;
    final size = Size(
      expanded ? double.infinity : buttonTheme.minWidth,
      sizeStyles.size,
    );
    return OutlinedButton.styleFrom(
      // foregroundColor: background,
      side: BorderSide(color: colors.primary),
      minimumSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }

  ButtonStyle getSecondaryIconStyle(BuildContext context) {
    // final themeData = Theme.of(context);
    // final colors = themeData.getPrimaryColors();
    final size = Size(
      sizeStyles.size / 2 + UtSpaceStyle.sm.value,
      sizeStyles.size / 2 + UtSpaceStyle.sm.value,
    );
    return OutlinedButton.styleFrom(
      // foregroundColor: colors.primary,
      // side: BorderSide(color: colors.primary),
      elevation: UtButtonConstant.elevation,
      minimumSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }
}
