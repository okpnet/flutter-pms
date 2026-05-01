import '../../styles/export/ut_widget_design.dart';
import '../constants/ut_button_constant.dart';
import '../constants/ut_button_size_style.dart';
import 'ut_button_color_helper.dart';

mixin UtTertiaryButtonMixin on Widget {
  UtButtonSizeStyle get sizeStyles;
  ButtonStyle getTertiarStyle(BuildContext context, bool expanded) {
    final buttonTheme = Theme.of(context).buttonTheme;
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
    final background = UtButtonColorHelper.bg(context);
    final size = Size(sizeStyles.size, sizeStyles.size);
    return TextButton.styleFrom(
      foregroundColor: background,
      minimumSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }
}
