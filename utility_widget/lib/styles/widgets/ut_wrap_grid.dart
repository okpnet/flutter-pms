part of '../ut_style.dart';

class UtWrapGrid extends StatelessWidget {
  final int rowWidgetCount;
  final WrapAlignment alignment;
  final List<Widget> children;
  UtWrapGrid({
    super.key,
    required this.rowWidgetCount,
    required this.children,
    this.alignment = WrapAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    final prespose = UtLayoutHelper.getResponsiveSize(context);
    final isMobile = UtLayoutHelper.isMobile(context);
    final width = prespose.size.width / rowWidgetCount;
    return Wrap(
      alignment: alignment,
      direction: Axis.horizontal,
      spacing: UtStyleDefaultConstant.edgeInsetsDefaultValue,
      runSpacing: UtStyleDefaultConstant.edgeInsetsDefaultValue,
      runAlignment: WrapAlignment.start,
      children: [
        for (var child in children)
          SizedBox(
            width: width,
            child: Expanded(child: child),
          ),
      ],
    );
  }
}
