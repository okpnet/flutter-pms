part of '../ut_style.dart';

class UtResponsiveRowWrapItem extends StatelessWidget {
  final AlignmentGeometry align;
  final AlignmentGeometry mobileAlign;
  @RangeValues(1, 12)
  final int cellCount;
  final UtGridEnableWidthType enableWidthType;
  final Widget child;

  const UtResponsiveRowWrapItem({
    super.key,
    required this.child,
    this.align = AlignmentGeometry.center,
    this.mobileAlign = AlignmentGeometry.centerLeft,
    this.cellCount = 1,
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

  factory UtResponsiveRowWrapItem.offset({
    Key? key,
    required int offsetLength,
    UtGridEnableWidthType enableWidthType = UtGridEnableWidthType.onlyWide,
  }) {
    return UtResponsiveRowWrapItem(
      key: key,
      cellCount: offsetLength,
      enableWidthType: enableWidthType,
      child: SizedBox.shrink(),
    );
  }
}
