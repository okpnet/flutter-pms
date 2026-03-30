part of '../ut_field.dart';

class UtCheckboxStyleHelper with UtMixinWidgetHelper {
  static WidgetStateProperty<Color?> primary(BuildContext context) {
    final background = UtMixinWidgetHelper.bg(context);
    final foreground = UtMixinWidgetHelper.fg(context);
    return WidgetStateColor.resolveWith((state) => background);
  }

  static BorderSide secondarySide(BuildContext context) {
    final background = UtMixinWidgetHelper.bg(context);
    final foreground = UtMixinWidgetHelper.fg(context);
    return BorderSide(color: background, width: UtInputFieldConstant.SIDE_W);
  }

  static Color secondaryColor(BuildContext context) {
    final background = UtMixinWidgetHelper.bg(context);
    final foreground = UtMixinWidgetHelper.fg(context);
    return background;
  }

  static BorderSide tertiarySide() {
    // final background = MixinWidgetHelper.bg(context);
    // final foreground = MixinWidgetHelper.fg(context);
    return BorderSide(color: Colors.transparent, width: 0);
  }

  static WidgetStateProperty<Color?> transparent() {
    // final background = MixinWidgetHelper.bg(context);
    // final foreground = MixinWidgetHelper.fg(context);
    return WidgetStateColor.resolveWith((state) => Colors.transparent);
  }
}
