import '../model/design_node.dart';
import 'design_editor_controller.dart';

class CellResizeController {
  final DesignEditorController editor;
  const CellResizeController(this.editor);

  void onResizeDrag(DesignNode node, int deltaColumns) {
    final breakpoint = editor.editingBreakpoint;
    final columnCount = editor.previewGridConfig.specs[breakpoint]!.columnCount;
    final siblings = editor.siblingsOf(node);
    final siblingSpanTotal = siblings
        .where((n) => n.id != node.id)
        .map((n) => n.resolveStyle(breakpoint).width)
        .fold(0, (a, b) => a + b);

    final currentStyle = node.resolveStyle(breakpoint);
    final maxWidth = columnCount - siblingSpanTotal;
    final newWidth = (currentStyle.width + deltaColumns).clamp(1, maxWidth);

    editor.updateNodeStyle(
      node,
      breakpoint,
      currentStyle.copyWith(width: newWidth),
    );
  }
}
