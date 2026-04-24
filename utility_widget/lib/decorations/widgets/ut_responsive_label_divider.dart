part of '../ut_decoration.dart';

class UtResponsiveLabelDivider extends StatelessWidget with UtEdgeinsetMixin {
  final String label;
  final UtGridEnableWidthType? enableType;
  final UtBrightnessStyle? brightnessStyle;
  final UtBorderStyle? dividerThickness;
  UtResponsiveLabelDivider({
    super.key,
    required this.label,
    this.enableType,
    this.brightnessStyle,
    this.dividerThickness,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edgeInsetsBuilder(
        direction: .vertical,
        value: UtSpaceStyle.lg.value,
      ),
      child: UtResponsiveRowWrap.grid(
        alignment: .center,
        maxCellCount: 1,
        children: [
          UtResponsiveRowWrapItem(
            align: .centerLeft,
            enableWidthType: enableType ?? UtGridEnableWidthType.enableAll,
            cellCount: 1,
            mobileAlign: .center,
            child: UtDivider(
              brightness: brightnessStyle ?? UtBrightnessStyle.mid,
              thickness: dividerThickness ?? UtBorderStyle.md,
              prefixAlign: .start,
              prefix: UtText.label(label),
            ),
          ),
        ],
      ),
    );
  }
}
