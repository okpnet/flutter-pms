// Project imports:
import 'package:utility_widget/styles/export/ut_widget_design.dart';

class UtFontScale {
  static double of({required BuildContext context, required double scale}) {
    final base = Theme.of(context).textTheme.bodyMedium!.fontSize!;
    return base * scale;
  }
}
