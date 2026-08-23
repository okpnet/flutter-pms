import '../model/breakpoint.dart';
import '../model/node_breakpoint_style.dart';
import 'grid_config.dart';

class BreakpointResolver {
  const BreakpointResolver();

  Breakpoint resolveBreakpoint(double screenWidth, GridConfig config) {
    final sorted = config.specs.entries.toList()
      ..sort((a, b) => b.value.minWidth.compareTo(a.value.minWidth));
    for (final entry in sorted) {
      if (screenWidth >= entry.value.minWidth) return entry.key;
    }
    return Breakpoint.compact;
  }

  /// 呼び出し側は事前に node.resolveStyle(breakpoint) で
  /// 継承解決済みのstyleを取得してから渡す。
  double resolveWidthFraction(
    NodeBreakpointStyle resolvedStyle,
    Breakpoint breakpoint,
    GridConfig config,
  ) {
    final columnCount = config.specs[breakpoint]!.columnCount;
    final clampedSpan = resolvedStyle.width.clamp(0, columnCount);
    return clampedSpan / columnCount;
  }
}
