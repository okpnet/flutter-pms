import '../../styles/export/ut_widget_design.dart';
import '../constants/ut_text_priority_style.dart';

mixin UtTextStyleMixin {
  static const double xl = 3.6;
  static const double lg = 2.4;
  static const double md = 1.8;
  static const double sm = 1.2;
  static const double defaultScale = 1.0;
  static const double xs = 0.6;

  UtTextPriorityStyle get priority;
  UtTextColorStyle get color;

  TextStyle? buildStyle(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final base = theme.bodyMedium!.fontSize!;
    return switch (priority) {
      .title => theme.bodyMedium?.copyWith(
        color: color.getColor(context),
        fontSize: base * xl,
      ),
      .subtitle => theme.bodyMedium?.copyWith(
        color: color.getColor(context),
        fontSize: base * lg,
      ),
      .sectionTitle => theme.titleLarge?.copyWith(
        color: color.getColor(context),
        fontSize: base * md,
      ),
      .sectionSubTitle => theme.bodyMedium?.copyWith(
        color: color.getColor(context),
        fontSize: base * sm,
      ),
      .smallText => theme.bodySmall?.copyWith(
        color: color.getColor(context),
        fontSize: base * xs,
      ),
      .label => theme.labelMedium?.copyWith(color: color.getColor(context)),
      _ => null,
    };
  }
}
