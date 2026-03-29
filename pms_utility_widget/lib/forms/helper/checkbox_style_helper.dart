part of '../field.dart';

class CheckboxStyleHelper with MixinWidgetHelper {
  static WidgetStateProperty<Color?> primary(BuildContext context) {
    final background = MixinWidgetHelper.bg(context);
    final foreground = MixinWidgetHelper.fg(context);
    return WidgetStateColor.resolveWith((state) => background);
  }

  static BorderSide secondarySide(BuildContext context) {
    final background = MixinWidgetHelper.bg(context);
    final foreground = MixinWidgetHelper.fg(context);
    return BorderSide(color: background, width: InputFieldConstant.SIDE_W);
  }

  static Color secondaryColor(BuildContext context) {
    final background = MixinWidgetHelper.bg(context);
    final foreground = MixinWidgetHelper.fg(context);
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
