// Project imports:
import '../../styles/export/ut_widget_design.dart';

mixin UtCheckboxStyleMixin {
  final double borderWidth = 2;

  Color bg(BuildContext context) => Theme.of(context).colorScheme.primary;

  Color fg(BuildContext context) => Theme.of(context).colorScheme.onPrimary;

  WidgetStateProperty<Color?> primary(BuildContext context) {
    final background = bg(context);
    // final foreground = UtMixinWidgetHelper.fg(context);
    return WidgetStateColor.resolveWith((state) => background);
  }

  BorderSide secondarySide(BuildContext context) {
    final background = bg(context);
    // final foreground = UtMixinWidgetHelper.fg(context);
    return BorderSide(color: background, width: borderWidth);
  }

  Color secondaryColor(BuildContext context) {
    final background = bg(context);
    // final foreground = UtMixinWidgetHelper.fg(context);
    return background;
  }

  BorderSide tertiarySide() {
    // final background = MixinWidgetHelper.bg(context);
    // final foreground = MixinWidgetHelper.fg(context);
    return BorderSide(color: Colors.transparent, width: 0);
  }

  WidgetStateProperty<Color?> transparent() {
    // final background = MixinWidgetHelper.bg(context);
    // final foreground = MixinWidgetHelper.fg(context);
    return WidgetStateColor.resolveWith((state) => Colors.transparent);
  }
}
