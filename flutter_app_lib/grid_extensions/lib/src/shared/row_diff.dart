class RowDiffValue {
  final String rowUniqId;

  final String? parentUniqId;
  final int index;
  final bool expanded;

  RowDiffValue({
    required this.rowUniqId,
    this.parentUniqId,
    required this.index,
    required this.expanded,
  });

  @override
  bool operator ==(Object other) {
    if (other case RowDiffValue value) {
      return rowUniqId == value.rowUniqId &&
          parentUniqId == value.parentUniqId &&
          index == value.index &&
          expanded == value.expanded;
    }
    return false;
  }

  @override
  int get hashCode =>
      rowUniqId.hashCode &
      parentUniqId.hashCode &
      index.hashCode &
      expanded.hashCode;
}

class RowDiff {
  final RowDiffValue before;
  final RowDiffValue after;

  bool get equal => before == after;

  RowDiff({required this.before, required this.after});
}
