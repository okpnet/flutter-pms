// Project imports:
import 'package:utility_widget/text/constants/ut_text_size_style.dart';
import '../../core/ut_widget_design.dart';
import '../constants/ut_text_priority_style.dart';

mixin UtTextStyleMixin {
  static const double xl = 3.6;
  static const double lg = 2.4;
  static const double md = 1.8;
  static const double sm = 1.2;
  static const double defaultScale = 1.0;
  static const double xs = 0.6;

  UtTextColorStyle get color;

  TextStyle? buildStyle(BuildContext context, UtTextSizeStyle sizeStyle) {
    final theme = Theme.of(context).textTheme;
    return switch (sizeStyle) {
      .xl => theme.bodyMedium?.copyWith(
        color: color.getColor(context),
        fontSize: UtTextSizeStyle.xl.fontSizeOf(context),
      ),
      .lg => theme.bodyMedium?.copyWith(
        color: color.getColor(context),
        fontSize: UtTextSizeStyle.lg.fontSizeOf(context),
      ),
      .md => theme.titleLarge?.copyWith(
        color: color.getColor(context),
        fontSize: UtTextSizeStyle.md.fontSizeOf(context),
      ),
      .sm => theme.bodyMedium?.copyWith(
        color: color.getColor(context),
        fontSize: UtTextSizeStyle.sm.fontSizeOf(context),
      ),
      .xs => theme.bodySmall?.copyWith(
        color: color.getColor(context),
        fontSize: UtTextSizeStyle.xs.fontSizeOf(context),
      ),
      .label => theme.labelMedium?.copyWith(color: color.getColor(context)),
      _ => null,
    };
  }
}
