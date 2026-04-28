// part of '../ut_decoration.dart';

// class UtResponsiveLabelDivider extends StatelessWidget with UtEdgeinsetMixin {
//   final String label;
//   final UtMediaBreakpoint? hidepoint;
//   final UtBrightnessStyle? brightnessStyle;
//   final UtBorderStyle? dividerThickness;
//   UtResponsiveLabelDivider({
//     super.key,
//     required this.label,
//     this.hidepoint,
//     this.brightnessStyle,
//     this.dividerThickness,
//   });

//   @override
//   Widget build(BuildContext context) {
//     if()
//     return Container(
//       margin: edgeInsetsBuilder(
//         direction: .vertical,
//         value: UtSpaceStyle.lg.value,
//       ),
//       child: Row(crossAxisAlignment: .start,children: [

//       ],) UtResponsiveRowWrap.grid(
//         alignment: .center,
//         maxCellCount: 1,
//         children: [
//           UtResponsiveRowWrapItem(
//             align: .centerLeft,
//             enableWidthType: enableType ?? UtGridEnableWidthType.enableAll,
//             cellCount: 1,
//             mobileAlign: .center,
//             child: UtDivider(
//               brightness: brightnessStyle ?? UtBrightnessStyle.mid,
//               thickness: dividerThickness ?? UtBorderStyle.md,
//               prefixAlign: .start,
//               prefix: UtText.label(label),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
