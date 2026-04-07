import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/layout/ut_direction.dart';

mixin UtEdgeinsetMixin {
  final double _defaultMargin = 5;

  EdgeInsets edgeInsetsOf({UtDirection? direction}) {
    if (direction == null) return EdgeInsets.all(_defaultMargin);
    return switch (direction.bit) {
      0xf => EdgeInsets.all(_defaultMargin),
      0x0 => EdgeInsets.zero,
      _ => EdgeInsets.only(
        bottom: direction.isBottom() ? _defaultMargin : 0,
        left: direction.isLeft() ? _defaultMargin : 0,
        right: direction.isRight() ? _defaultMargin : 0,
        top: direction.isTop() ? _defaultMargin : 0,
      ),
    };
  }
}
