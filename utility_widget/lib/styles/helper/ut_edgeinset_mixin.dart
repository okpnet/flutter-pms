// Project imports:
import 'package:utility_widget/styles/constans/ut_space_style.dart';
import '../../core/ut_widget_design.dart';
import '../layout_model/ut_direction.dart';

mixin UtEdgeinsetMixin {
  final double _edgeInsetsValue = UtSpaceStyle.md.value;

  double get defaultMargin => _edgeInsetsValue;

  double get defaultPadding => _edgeInsetsValue;

  EdgeInsets edgeInsetsBuilder({UtDirection? direction, UtSpaceStyle? value}) =>
      _create(direction, value?.value);

  EdgeInsets edgeInsetsBuilderDouble({UtDirection? direction, double? value}) =>
      _create(direction, value);

  EdgeInsets _create(UtDirection? direction, double? value) {
    final edgeValue = value ?? _edgeInsetsValue;
    if (direction == null) return EdgeInsets.all(edgeValue);
    return switch (direction.bit) {
      0xf => EdgeInsets.all(edgeValue),
      0x0 => EdgeInsets.zero,
      _ => EdgeInsets.only(
        bottom: direction.isBottom() ? edgeValue : 0,
        left: direction.isLeft() ? edgeValue : 0,
        right: direction.isRight() ? edgeValue : 0,
        top: direction.isTop() ? edgeValue : 0,
      ),
    };
  }
}
