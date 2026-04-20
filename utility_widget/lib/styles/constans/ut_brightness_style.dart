import '../export/ut_widget_design.dart';

enum UtBrightnessStyle {
  light(0),
  mid(1),
  dark(2);

  final int value;
  const UtBrightnessStyle(this.value);
  Color getColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return switch (value) {
      0 => scheme.surfaceContainerHigh,
      1 => scheme.surfaceContainer,
      2 => scheme.surfaceContainerLowest,
      _ => throw Exception('out of range.'),
    };
  }
}
