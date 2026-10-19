import '../model/breakpoint.dart';

class BreakpointSpec {
  /// この区分が適用される最小幅（px）。compactは通常0。
  final double minWidth;

  /// この区分でのグリッド総列数
  final int columnCount;

  const BreakpointSpec({required this.minWidth, required this.columnCount});
}

/// アプリが起動時に一度だけ生成し、DesignRendererに渡す設定。
/// ライブラリ側はこれを一切ハードコードしない（要件6）。
class GridConfig {
  final Map<Breakpoint, BreakpointSpec> specs;

  const GridConfig({required this.specs}) : assert(specs.length == 3);

  factory GridConfig.simple({
    required int compactColumns,
    required int mediumColumns,
    required int expandedColumns,
    double mediumMinWidth = 600,
    double expandedMinWidth = 1024,
  }) => GridConfig(
    specs: {
      Breakpoint.compact: BreakpointSpec(
        minWidth: 0,
        columnCount: compactColumns,
      ),
      Breakpoint.medium: BreakpointSpec(
        minWidth: mediumMinWidth,
        columnCount: mediumColumns,
      ),
      Breakpoint.expanded: BreakpointSpec(
        minWidth: expandedMinWidth,
        columnCount: expandedColumns,
      ),
    },
  );
}
