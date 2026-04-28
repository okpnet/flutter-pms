// part of '../ut_style.dart';

// class UtResponsiveRowWrap extends StatelessWidget {
//   //Inputの最小幅
//   static const double defaultMinLentgh = 240;
//   @RangeValues(1, 12)
//   final int maxCellCount;
//   final WrapAlignment alignment;
//   final List<UtResponsiveRowWrapItem> children;
//   final double minWidth;
//   // final Axis direction;

//   const UtResponsiveRowWrap._({
//     super.key,
//     required this.maxCellCount,
//     required this.children,
//     this.alignment = WrapAlignment.start,
//     this.minWidth = defaultMinLentgh,
//     // this.direction = .horizontal,
//   });

//   factory UtResponsiveRowWrap.grid({
//     Key? key,
//     int maxCellCount = 12,
//     WrapAlignment alignment = WrapAlignment.start,
//     required List<UtResponsiveRowWrapItem> children,
//     double minWidth = 0,
//     // Axis direction = .horizontal,
//   }) {
//     final sum = children.sumBy((t) => t.cellCount);
//     if (sum > maxCellCount) {
//       throw RangeError.value(
//         sum,
//         '@child',
//         'the child itemlength summary is less than @maxCellCount.',
//       );
//     }
//     return UtResponsiveRowWrap._(
//       key: key,
//       alignment: alignment,
//       maxCellCount: maxCellCount,
//       minWidth: minWidth,
//       // direction: direction,
//       children: children,
//     );
//   }

//   factory UtResponsiveRowWrap.lineSpace({
//     Key? key,
//     UtSpaceStyle space = .xl,
//     Axis direction = .horizontal,
//   }) {
//     return UtResponsiveRowWrap._(
//       key: key,
//       alignment: .center,
//       maxCellCount: 1,
//       minWidth: 0,
//       // direction: direction,
//       children: [
//         UtResponsiveRowWrapItem(
//           child: SizedBox(width: space.value, height: space.value),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isMobile = UtLayoutHelper.isMobile(context);
//     if (isMobile) {
//       return mobile(context);
//     }
//     return wide(context);
//   }

//   Widget wide(BuildContext context) {
//     return LayoutBuilder(
//       builder: (_, constrains) {
//         final testHeight = constrains.constrainHeight();
//         final space = UtSpaceStyle.xl.value;
//         final contentsLength = constrains.widthConstraints().maxWidth;

//         final itemLength = (contentsLength - space * 2) / maxCellCount;
//         final length = minWidth > itemLength ? minWidth : itemLength;
//         // 1. 1 行に入る最大個数 n
//         final n = ((contentsLength - (maxCellCount - 1) * space) / (length))
//             .floor();
//         // 2. 行の使用幅
//         final usedLength = n * length + space * (n - 1);
//         // 3. 余り幅（行ごとに同じ）
//         final remain = contentsLength - usedLength;
//         // 4. 最後の行の不足数
//         final shortage = (n - (children.sumBy((t) => t.cellCount) % n)) % n;

//         return Wrap(
//           alignment: alignment,
//           direction: Axis.horizontal, //direction,
//           spacing: space,
//           runSpacing: space,
//           runAlignment: WrapAlignment.start,
//           children: [
//             for (var child in children.where(
//               (t) => t.enableWidthType != UtGridEnableWidthType.onlyMobile,
//             ))
//               SizedBox(width: length * child.cellCount, child: child),
//             // direction == .horizontal
//             //     ? SizedBox(width: length * child.cellCount, child: child)
//             //     : SizedBox(height: length * child.cellCount, child: child),
//             if (shortage > 0)
//               SizedBox(width: length * shortage, child: SizedBox.shrink()),
//             // direction == .horizontal
//             //     ? SizedBox(width: length * shortage, child: SizedBox.shrink())
//             //     : SizedBox(
//             //         height: length * shortage,
//             //         child: SizedBox.shrink(),
//             //       ),
//           ],
//         );
//       },
//     );
//   }

//   Widget mobile(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: children
//           .where((t) => t.enableWidthType != UtGridEnableWidthType.onlyWide)
//           .toList(),
//     );
//   }
// }
