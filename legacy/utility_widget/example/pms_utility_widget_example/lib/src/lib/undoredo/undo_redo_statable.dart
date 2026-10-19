import 'package:utility_widget_example/src/lib/undoredo/undo_redo.dart';

///UndoRedoの状態管理の実装
abstract interface class IUndoRedoStatable<T> {
  /// UndoRedoの状態管理
  UndoRedoState<T> get undoredoState;
}
