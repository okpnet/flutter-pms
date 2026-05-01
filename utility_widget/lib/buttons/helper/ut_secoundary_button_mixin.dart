import '../../styles/export/ut_widget_design.dart';
import '../constants/ut_button_constant.dart';
import '../constants/ut_button_size_style.dart';
import 'ut_button_color_helper.dart';

mixin UtSecoundaryButtonMixin on Widget {
  UtButtonSizeStyle get sizeStyles;
  //セカンダリボタンスタイルヘルパー
  ButtonStyle getSecondaryStyle(BuildContext context, bool expanded) {
    final background = UtButtonColorHelper.bg(context);
    final buttonTheme = Theme.of(context).buttonTheme;
    final size = Size(
      expanded ? double.infinity : buttonTheme.minWidth,
      sizeStyles.size,
    );
    return OutlinedButton.styleFrom(
      // foregroundColor: background,
      side: BorderSide(color: background),
      fixedSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }

  ButtonStyle getSecondaryIconStyle(BuildContext context) {
    final background = UtButtonColorHelper.bg(context);
    final size = Size(sizeStyles.size, sizeStyles.size);
    return OutlinedButton.styleFrom(
      foregroundColor: background,
      side: BorderSide(color: background),
      elevation: UtButtonConstant.elevation,
      fixedSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }
}
