import 'package:utility_widget/buttons/constants/ut_button_constant.dart';
import 'package:utility_widget/buttons/constants/ut_button_size_style.dart';

import '../../styles/export/ut_widget_design.dart';
import 'ut_button_color_helper.dart';

mixin UtPrimaryButtonMixin on Widget {
  UtButtonSizeStyle get sizeStyles;

  ButtonStyle getPrimaryStyle(BuildContext context, bool expanded) {
    final background = UtButtonColorHelper.bg(context);
    final foreground = UtButtonColorHelper.fg(context);
    final buttonTheme = Theme.of(context).buttonTheme;
    final size = Size(
      expanded ? double.infinity : buttonTheme.minWidth,
      sizeStyles.size,
    );

    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
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
    final background = UtButtonColorHelper.bg(context);
    final foreground = UtButtonColorHelper.fg(context);
    final buttonTheme = Theme.of(context).buttonTheme;
    final size = Size(
      expanded ? double.infinity : buttonTheme.minWidth,
      sizeStyles.size,
    );

    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: UtButtonConstant.elevation,
      minimumSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }

  ButtonStyle getPrimaryIconStyle(BuildContext context) {
    final background = UtButtonColorHelper.bg(context);
    final foreground = UtButtonColorHelper.fg(context);
    final size = Size(sizeStyles.size, sizeStyles.size);
    return ElevatedButton.styleFrom(
      backgroundColor: background,
      foregroundColor: foreground,
      elevation: UtButtonConstant.elevation,
      minimumSize: size,
      shape: RoundedRectangleBorder(
        borderRadius: UtButtonConstant.defaultRadius,
      ),
    );
  }
}
