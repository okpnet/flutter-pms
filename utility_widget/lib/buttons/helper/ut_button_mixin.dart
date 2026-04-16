// Project imports:
import '../../styles/export/ut_widget_design.dart';

mixin UtButtonMixin on Widget {
  final double elevation = 2;
  final double paddingV = 16;
  final double paddingH = 32;

  EdgeInsets buttonPadding() {
    return EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH);
  }

  Color bg(BuildContext context) => Theme.of(context).colorScheme.primary;

  Color fg(BuildContext context) => Theme.of(context).colorScheme.onPrimary;
}
