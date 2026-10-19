// Project imports:
import '../../core/ut_widget_design.dart';

enum UtBrightnessStyle {
  light(0),
  mid(1),
  dark(2);

  final int value;
  const UtBrightnessStyle(this.value);
  Color getColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return switch (value) {
      0 => scheme.primaryFixed,
      1 => scheme.primaryFixedDim,
      2 => scheme.primary,
      _ => throw Exception('out of range.'),
    };
  }
}
