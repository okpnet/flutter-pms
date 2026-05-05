// Project imports:
import '../../core/ut_widget_design.dart';

enum UtTextColorStyle {
  text('text'),
  primary('primary'),
  secondary('secondary'),
  tertiary('tertiary'),
  error('error');

  final String value;

  const UtTextColorStyle(this.value);

  Color? getColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return switch (value) {
      'primary' => scheme.primary,
      'secondary' => scheme.secondary,
      'tertiary' => scheme.tertiary,
      'error' => scheme.error,
      _ => null,
    };
  }
}

// enum UtTextPriorityStyle {
//   smallText,
//   text,
//   title,
//   subtitle,
//   sectionTitle,
//   sectionSubTitle,
//   label,
// }
