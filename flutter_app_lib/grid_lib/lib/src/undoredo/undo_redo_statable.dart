import 'package:grid_lib/src/undoredo/undo_redo.dart';

///UndoRedoの状態管理の実装
abstract interface class IUndoRedoStatable<T> {
  /// UndoRedoの状態管理
  UndoRedoState<T> get undoredoState;
}
