import 'package:grid_extensions/constants/constants.dart';
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
    final columns = manager.columns;
    if (0 > columns.indexWhere((t) => t.field == KeyConstant.uniqKey)) {
      throw AssertionError(
        'TrinaGrid has not "${KeyConstant.uniqKey} column." ',
      );
    }
    final index = manager.refRows.indexWhere(
      (t) => cells[KeyConstant.uniqKey] == t.cells[KeyConstant.uniqKey],
    );
    final rowUniqUuiId = cells[KeyConstant.uniqKey];
    final parentUniqUuId = parent?.cells[KeyConstant.uniqKey];
    return RowDiffValue(
      rowUniqId: rowUniqUuiId!.value.toString(),
      parentUniqId: parentUniqUuId?.toString(),
      index: index,
      expanded: expanded,
    );
  }
}
