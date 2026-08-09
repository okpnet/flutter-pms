import '../../../../imports.dart';
import '../models/row_diff.dart';

mixin GridDiffMixin {
  List<RowDiff> generateDiffs({
    required Key key,
    required int beforeIdx,
    required bool beforeExpanded,
    Key? beforeParentKey,
    required int afterIdx,
    Key? afterParentKey,
    required bool afterExpanded,
  }) {
    // 差分がある行だけを対象にする
    if (beforeParentKey != afterParentKey ||
        beforeIdx != afterIdx ||
        beforeExpanded != afterExpanded) {
      diffs.add(
        RowDiff(
          rowId: rowId,
          beforeParentId: beforeParentId,
          beforeIndex: beforeIndex,
          beforeExpanded: beforeExpanded,
          afterParentId: afterParentId,
          afterIndex: afterIndex,
          afterExpanded: afterExpanded,
        ),
      );
    }

    return diffs;
  }
}
