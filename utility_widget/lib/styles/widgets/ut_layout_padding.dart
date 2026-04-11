part of '../ut_style.dart';

class UtLayoutPadding extends StatelessWidget with UtEdgeinsetMixin {
  final UtDirection? direction;
  final Widget child;
  UtLayoutPadding({super.key, this.direction, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsetsBuilder(direction: direction),
      child: child,
    );
  }
}
