import 'package:flutter/foundation.dart';

import '../../../undoredo/undo_redo.dart';
import '../../presenters/presenters.dart';

///表のアクション処理
abstract interface class IGridBehavior {
  void handleRowDroped(
    RowModel before,
    RowModel after,
    void Function(RowModel) changeParent,
  );
}

///アクションのアンドゥリドゥを記録する
@immutable
class GridBehavior implements IGridBehavior {
  final UndoRedoState<RowModel> _undoredoState = UndoRedoState<RowModel>();

  @override
  void handleRowDroped(
    RowModel before,
    RowModel after,
    void Function(RowModel) changeParent,
  ) {
    _undoredoState.pushEdit(
      after,
      //戻すに追加
      RowUndoCommand(oldValue: before, newValue: after, execute: changeParent),
    );
  }
}
