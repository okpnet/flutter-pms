part of '../ut_style.dart';

class UtGridItem extends StatelessWidget {
  final AlignmentGeometry align;
  final AlignmentGeometry mobileAlign;
  @RangeValues(1, 12)
  final int itemLength;
  final UtGridEnableWidthType enableWidthType;
  final Widget child;

  const UtGridItem({
    super.key,
    required this.child,
    this.align = AlignmentGeometry.center,
    this.mobileAlign = AlignmentGeometry.centerLeft,
    this.itemLength = 1,
    this.enableWidthType = UtGridEnableWidthType.enableAll,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = UtLayoutHelper.isMobile(context);
    return SizedBox(
      width: double.infinity,
      child: Align(alignment: isMobile ? mobileAlign : align, child: child),
    );
  }
}
