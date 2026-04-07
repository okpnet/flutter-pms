part of '../ut_style.dart';

class UtLayoutMargin extends StatelessWidget with UtEdgeinsetMixin {
  final UtDirection? direction;
  final Widget child;

  UtLayoutMargin({super.key, this.direction, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edgeInsetsOf(direction: direction),
      child: child,
    );
  }
}
