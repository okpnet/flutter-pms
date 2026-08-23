import '../grid/grid_config.dart';
import '../model/breakpoint.dart';
import '../model/design_document.dart';
import '../model/design_node.dart';
import '../model/node_breakpoint_style.dart';
import 'resolved_design.dart';
import 'resolved_node.dart';

/// DesignDocument（保存用・欠落あり）と、アプリ提供のGridConfigから、
/// 中間インターフェイス（ResolvedDesign）を組み立てる。
/// このクラス自身はFlutterのWidgetに一切依存しない。
class DesignResolver {
  const DesignResolver();

  ResolvedDesign resolve(DesignDocument document, GridConfig gridConfig) {
    return ResolvedDesign(
      gridConfig: gridConfig,
      rootNodes: document.rootNodes.map(_resolveNode).toList(),
    );
  }

  ResolvedNode _resolveNode(DesignNode node) {
    final resolvedStyles = <Breakpoint, NodeBreakpointStyle>{
      for (final bp in Breakpoint.values) bp: node.resolveStyle(bp),
    };
    return ResolvedNode(
      id: node.id,
      name: node.name,
      resolvedStyles: resolvedStyles,
      children: node.children.map(_resolveNode).toList(),
    );
  }
}
