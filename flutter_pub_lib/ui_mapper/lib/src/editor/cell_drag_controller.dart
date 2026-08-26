import '../../editor.dart';
import '../model/design_node.dart';
import '../model/design_tree_utils.dart';

class CellDragController {
  final DesignEditorController editor;
  const CellDragController(this.editor);

  void moveNode({
    required DesignNode node,
    required DesignNode? targetParent,
    required int targetIndex,
  }) {
    if (targetParent != null &&
        (targetParent.id == node.id ||
            containsDescendant(node, targetParent.id))) {
      throw const CircularNestingException();
    }

    final targetDepth = targetParent == null
        ? 1
        : nodeDepth(editor.document.rootNodes, targetParent.id) + 1;
    final movingHeight = subtreeHeight(node);
    if (targetDepth + movingHeight - 1 > editor.maxNestingDepth) {
      throw NestingLimitExceededException(editor.maxNestingDepth);
    }

    editor.mutateTree((rootNodes) {
      final removed = detachNodeById(rootNodes, node.id);
      if (removed == null) return;
      final targetChildren = targetParent == null
          ? rootNodes
          : findNodeById(rootNodes, targetParent.id)?.children;
      if (targetChildren == null) return;
      targetChildren.insert(
        targetIndex.clamp(0, targetChildren.length),
        removed,
      );
      _clampWidthIfOverflow(removed, targetChildren);
    });
  }

  void _clampWidthIfOverflow(DesignNode node, List<DesignNode> siblings) {
    final breakpoint = editor.editingBreakpoint;
    final columnCount = editor.previewGridConfig.specs[breakpoint]!.columnCount;
    final othersTotal = siblings
        .where((n) => n.id != node.id)
        .map((n) => n.resolveStyle(breakpoint).width)
        .fold(0, (a, b) => a + b);

    final available = (columnCount - othersTotal).clamp(1, columnCount);
    final current = node.resolveStyle(breakpoint);
    if (current.width > available) {
      editor.updateNodeStyle(
        node,
        breakpoint,
        current.copyWith(width: available),
      );
    }
  }
}
