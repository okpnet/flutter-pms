part of '../ut_style.dart';

class UtWrapGrid extends StatelessWidget {
  @RangeValues(1, 12)
  final int rowWidgetLength;
  final WrapAlignment alignment;
  final List<UtGridItem> children;

  const UtWrapGrid._({
    super.key,
    required this.rowWidgetLength,
    required this.children,
    this.alignment = WrapAlignment.center,
  });

  factory UtWrapGrid.grid({
    Key? key,
    int rowWidgetLength = 12,
    WrapAlignment alignment = WrapAlignment.center,
    required List<UtGridItem> children,
  }) {
    final sum = children.map((t) => t.itemLength).reduce((a, b) => a + b);
    if (sum > rowWidgetLength) {
      throw RangeError.value(
        sum,
        '@child',
        'the child itemlength summary is less than @rowWidgetLength.',
      );
    }
    return UtWrapGrid._(
      key: key,
      alignment: alignment,
      rowWidgetLength: rowWidgetLength,
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
      builder: (context, _constrains) {
        final conttentsWidth = _constrains.widthConstraints().maxWidth;
        final itemWidth = conttentsWidth / rowWidgetLength;
        // final isFullwidth = UtLayoutHelper.isFullwidthFromWidth(width);
        return Wrap(
          alignment: alignment,
          direction: Axis.horizontal,
          spacing: UtStyleDefaultConstant.edgeInsetsDefaultValue,
          runSpacing: UtStyleDefaultConstant.edgeInsetsDefaultValue,
          runAlignment: WrapAlignment.start,
          children: [
            for (var child in children.where(
              (t) => t.enableWidthType != UtGridEnableWidthType.onlyMobile,
            ))
              SizedBox(width: itemWidth * child.itemLength, child: child),
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
