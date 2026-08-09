import '../import.dart';

class RowDiffValue {
  final Key rowKey;

  final Key? parentKey;
  final int index;
  final bool expanded;

  RowDiffValue({
    required this.rowKey,
    this.parentKey,
    required this.index,
    required this.expanded,
  });

  @override
  bool operator ==(Object other) {
    if (other case RowDiffValue value) {
      return rowKey == value.rowKey &&
          parentKey == value.parentKey &&
          index == value.index &&
          expanded == value.expanded;
    }
    return false;
  }

  @override
  int get hashCode =>
      rowKey.hashCode & parentKey.hashCode & index.hashCode & expanded.hashCode;
}

class RowDiff {
  final RowDiffValue before;
  final RowDiffValue after;

  bool get equal => before == after;

  RowDiff({required this.before, required this.after});
}
