// Project imports:
import 'package:utility_widget/core/ut_widget_design.dart';

enum UtTextSizeStyle {
  label(double.nan),
  none(1.0),
  xs(0.6),
  sm(1.2),
  md(1.8),
  lg(2.4),
  xl(3.6);

  final double value;
  const UtTextSizeStyle(this.value);

  double fontSizeOf(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final base = theme.bodyMedium!.fontSize!;
    return base * value;
  }
}
