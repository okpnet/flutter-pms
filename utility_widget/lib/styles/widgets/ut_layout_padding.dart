part of '../ut_style.dart';

class UtLayoutPadding extends StatelessWidget with UtEdgeinsetMixin {
  final UtDirection? direction;
  final double? padding;
  final Widget child;

  UtLayoutPadding._({
    super.key,
    this.direction,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsetsBuilder(direction: direction, value: padding),
      child: child,
    );
  }

  factory UtLayoutPadding.of({
    Key? key,
    UtDirection? direction,
    UtSpaceStyle? style,
    required Widget child,
  }) {
    return UtLayoutPadding._(
      direction: direction,
      padding: style?.value,
      child: child,
    );
  }
}
