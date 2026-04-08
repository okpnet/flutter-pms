import 'package:utility_widget/styles/export/ut_widget_design.dart';

mixin UtThemeColorMixin on Widget {
  ColorScheme themeColors(BuildContext context) {
    return Theme.of(context).colorScheme;
  }
}
