// Project imports:
import 'package:utility_widget/styles/constans/ut_color_constannt.dart';
import '../../core/ut_widget_design.dart';

enum UtPriorityStyle { primary, secondary, tertiary }

enum UtPriorityColorStyle {
  info('info'),
  success('success'),
  warning('warning'),
  danger('danger');

  final String value;

  const UtPriorityColorStyle(this.value);

  Color getColor() {
    return switch (value) {
      'danger' => UtColorConstannt.danger,
      _ => throw Exception('"$value" is not implement.'),
    };
  }
}
