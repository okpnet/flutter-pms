import '../constants/constants.dart'; // MediaBreakPoint がある想定
import 'responsive_cell_layout.dart';

class ResponsiveGridBehavior {
  final double totalWidth;
  final MediaBreakPoint media;
  final int maxCells;
  final double spacing;

  ResponsiveGridBehavior({
    required this.totalWidth,
    required this.media,
    required this.maxCells,
    required this.spacing,
  });

  // 1マス（最小単位）あたりのベース幅
  double get baseCellWidth {
    final totalSpacing = spacing * (maxCells - 1);
    return (totalWidth - totalSpacing) / maxCells;
  }

  // セルを表示すべきかどうかの判定
  bool shouldShow(ResponsiveCellLayout layout) {
    if (media == MediaBreakPoint.pc) return layout.showOnPc;
    if (media == MediaBreakPoint.tablet) return layout.showOnTablet;
    return layout.showOnMobile;
  }

  // 現在のデバイスに応じた flex の取得
  int getFlex(ResponsiveCellLayout layout) {
    int flex = 1;
    if (media == MediaBreakPoint.pc) {
      flex = layout.pcFlex ?? 1;
    } else if (media == MediaBreakPoint.tablet) {
      flex = layout.tabletFlex ?? layout.pcFlex ?? 1;
    } else {
      flex = layout.mobileFlex ?? 1;
    }
    return flex.clamp(1, maxCells);
  }

  // 3. 現在のデバイスに応じた offset の取得
  int getOffset(ResponsiveCellLayout layout) {
    int offset = 0;
    if (media == MediaBreakPoint.pc) {
      offset = layout.pcOffset ?? 0;
    } else if (media == MediaBreakPoint.tablet) {
      offset = layout.tabletOffset ?? layout.pcOffset ?? 0;
    } else {
      offset = layout.mobileOffset ?? 0;
    }

    final flex = getFlex(layout);
    return offset.clamp(0, maxCells - flex);
  }

  // 実数値としてのセル幅を計算
  double calculateWidth(int cells) {
    if (cells <= 0) return 0.0;
    final cellSpacing = spacing * (cells - 1);
    return (baseCellWidth * cells) + cellSpacing;
  }
}
