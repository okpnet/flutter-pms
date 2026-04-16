part of '../ut_style.dart';

class UtResponsiveRowWrap extends StatelessWidget {
  @RangeValues(1, 12)
  final int maxCellCount;
  final WrapAlignment alignment;
  final List<UtResponsiveRowWrapItem> children;
  final double minWidth;
  const UtResponsiveRowWrap._({
    super.key,
    required this.maxCellCount,
    required this.children,
    this.alignment = WrapAlignment.start,
    this.minWidth = 0,
  });

  factory UtResponsiveRowWrap.grid({
    Key? key,
    int maxCellCount = 12,
    WrapAlignment alignment = WrapAlignment.start,
    required List<UtResponsiveRowWrapItem> children,
    double minWidth = 0,
  }) {
    final sum = children.sumByInt((t) => t.cellCount);
    if (sum > maxCellCount) {
      throw RangeError.value(
        sum,
        '@child',
        'the child itemlength summary is less than @maxCellCount.',
      );
    }
    return UtResponsiveRowWrap._(
      key: key,
      alignment: alignment,
      maxCellCount: maxCellCount,
      minWidth: minWidth,
      children: children,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = UtLayoutHelper.isMobile(context);
    return isMobile ? mobile(context) : wide(context);
  }

  Widget wide(BuildContext context) {
    return LayoutBuilder(
      builder: (_, _constrains) {
        final space = UtStyleDefaultConstant.edgeInsetsDefaultValue;
        final totalSpacing = maxCellCount * space;
        final contentsWidth = _constrains.widthConstraints().maxWidth;
        final itemWidth = (contentsWidth - totalSpacing) / maxCellCount;
        final width = minWidth > itemWidth ? minWidth : itemWidth;
        final sum = children.sumByInt((t) => t.cellCount);
        final shortage = maxCellCount - sum;

        return Wrap(
          alignment: alignment,
          direction: Axis.horizontal,
          spacing: space,
          runSpacing: space,
          runAlignment: WrapAlignment.start,
          children: [
            for (var child in children.where(
              (t) => t.enableWidthType != UtGridEnableWidthType.onlyMobile,
            ))
              SizedBox(width: width * child.cellCount, child: child),
            if (shortage > 0)
              for (int index = 0; shortage > index; index++)
                SizedBox(width: width, child: SizedBox.shrink()),
          ],
        );
      },
    );
  }

  Widget mobile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children
          .where((t) => t.enableWidthType != UtGridEnableWidthType.onlyWide)
          .toList(),
    );
  }
}
