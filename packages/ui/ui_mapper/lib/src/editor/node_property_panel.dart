import '../model/breakpoint.dart';
import '../model/design_node.dart';
import '../model/node_breakpoint_style.dart';

class NodeStyleFieldState {
  final NodeBreakpointStyle effectiveStyle;
  final bool isInherited; // trueなら現在のBreakpointに明示値がない
  const NodeStyleFieldState({
    required this.effectiveStyle,
    required this.isInherited,
  });
}

NodeStyleFieldState inspectStyle(DesignNode node, Breakpoint breakpoint) {
  final hasExplicit = node.styles.containsKey(breakpoint);
  return NodeStyleFieldState(
    effectiveStyle: node.resolveStyle(breakpoint),
    isInherited: !hasExplicit,
  );
}
