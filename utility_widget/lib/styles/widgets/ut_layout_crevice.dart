part of '../ut_style.dart';

enum CreviceType { margin, padding }

///標準の余白（マージン、パディング）を与える
class UtLayoutCrevice extends StatelessWidget with UtEdgeinsetMixin {
  final UtDirection? direction;
  final Widget child;
  final CreviceType type;
  UtLayoutCrevice({
    super.key,
    this.direction,
    required this.child,
    this.type = CreviceType.margin,
  });

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      CreviceType.margin => Container(
        margin: edgeInsetsBuilder(direction: direction),
        child: child,
      ),
      CreviceType.padding => Padding(
        padding: edgeInsetsBuilder(direction: direction),
        child: child,
      ),
    };
  }

  factory UtLayoutCrevice.margin({
    Key? key,
    required Widget child,
    UtDirection? direction,
  }) => UtLayoutCrevice(
    key: key,
    direction: direction,
    type: CreviceType.margin,
    child: child,
  );

  factory UtLayoutCrevice.padding({
    Key? key,
    required Widget child,
    UtDirection? direction,
  }) => UtLayoutCrevice(
    key: key,
    direction: direction,
    type: CreviceType.padding,
    child: child,
  );
}
