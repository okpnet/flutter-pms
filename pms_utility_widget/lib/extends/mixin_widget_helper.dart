import 'package:pms_utility_widget/styles/export/widget_design.dart';

mixin MixinWidgetHelper {
  static Color bg(BuildContext context) =>
      Theme.of(context).colorScheme.primary;

  static Color fg(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimary;
}
