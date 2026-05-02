import 'package:utility_widget/styles/export/ut_widget_design.dart';

extension UtThemeDataExtension on ThemeData {
  ({Color primary, Color onPrimary}) getPrimaryColors() {
    final scheme = colorScheme;
    return (primary: scheme.primary, onPrimary: scheme.onPrimary);
  }
}
