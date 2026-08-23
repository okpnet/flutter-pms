import '../model/breakpoint.dart';
import '../model/design_node.dart';

/// 編集中Breakpointの columnCount を使い、
/// 子ノードを「常に1行として並べ、はみ出したら次行へ回り込む」形で計算する。
/// 縦方向の区分別設定は持たない（要件3）。
class CanvasRowLayout {
  final int columnCount;
  const CanvasRowLayout({required this.columnCount});

  List<List<DesignNode>> layoutRows(
    List<DesignNode> children,
    Breakpoint editingBreakpoint,
  ) {
    final rows = <List<DesignNode>>[];
    var current = <DesignNode>[];
    var currentSpan = 0;

    for (final node in children) {
      final style = node.resolveStyle(editingBreakpoint);
      final span = style.visible ? style.width.clamp(0, columnCount) : 0;
      if (currentSpan + span > columnCount && current.isNotEmpty) {
        rows.add(current);
        current = [];
        currentSpan = 0;
      }
      current.add(node);
      currentSpan += span;
    }
    if (current.isNotEmpty) rows.add(current);
    return rows;
  }
}
