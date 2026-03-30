import 'package:utility_widget/styles/export/ut_widget_design.dart';

mixin UtMixinWidgetHelper {
  static Color bg(BuildContext context) =>
      Theme.of(context).colorScheme.primary;

  static Color fg(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimary;
}
