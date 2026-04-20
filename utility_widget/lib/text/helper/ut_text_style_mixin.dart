import '../../styles/export/ut_widget_design.dart';
import '../constants/ut_text_priority_style.dart';

mixin UtTextStyleMixin {
  static const double lScale = 1.8;
  static const double mlScale = 1.6;
  static const double mScale = 1.4;
  static const double msScale = 1.2;
  static const double defaultScale = 1.0;
  static const double sScale = 0.6;

  UtTextPriorityStyle get priority;
  UtTextColorStyle get color;

  TextStyle? buildStyle(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final base = theme.bodyMedium!.fontSize!;
    return switch (priority) {
      .title => theme.bodyMedium?.copyWith(
        color: color.getColor(context),
        fontSize: base * lScale,
      ),
      .subtitle => theme.bodyMedium?.copyWith(
        color: color.getColor(context),
        fontSize: base * mlScale,
      ),
      .sectionTitle => theme.titleLarge?.copyWith(
        color: color.getColor(context),
        fontSize: base * mScale,
      ),
      .sectionSubTitle => theme.bodyMedium?.copyWith(
        color: color.getColor(context),
        fontSize: base * msScale,
      ),
      .smallText => theme.bodySmall?.copyWith(
        color: color.getColor(context),
        fontSize: base * sScale,
      ),
      .label => theme.labelMedium?.copyWith(color: color.getColor(context)),
      _ => null,
    };
  }
}
