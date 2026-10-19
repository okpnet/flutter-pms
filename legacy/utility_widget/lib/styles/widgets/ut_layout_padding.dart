part of '../ut_style.dart';

class UtLayoutPadding extends StatelessWidget with UtEdgeinsetMixin {
  final UtDirection? direction;
  final UtSpaceStyle? paddingStyle;
  final Widget child;

  UtLayoutPadding({
    super.key,
    this.direction,
    required this.child,
    this.paddingStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: key,
      padding: edgeInsetsBuilder(direction: direction, value: paddingStyle),
      child: child,
    );
  }
}
