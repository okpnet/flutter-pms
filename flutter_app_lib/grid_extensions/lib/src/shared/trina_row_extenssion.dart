import 'package:grid_extensions/src/src.dart';

import '../import.dart';

extension TrinaRowExtension on TrinaRow {
  List<TrinaRow> get children {
    if (type is! TrinaRowTypeGroup) return [];
    return type.group.children;
  }

  bool get isExpanded {
    if (type is! TrinaRowTypeGroup) return false;
    return type.group.expanded;
  }

  set isExpanded(bool value) {
    type.group.setExpanded(value);
  }

  RowDiffValue toDiffValue(
    TrinaGridStateManager manager, {
    bool expanded = false,
  }) {
    final index = manager.refRows.indexWhere((t) => key == t.key);
    return RowDiffValue(rowKey: key, index: index, expanded: expanded);
  }
}
