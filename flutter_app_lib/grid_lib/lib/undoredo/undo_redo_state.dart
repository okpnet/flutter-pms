import 'package:undo_redo/lib.dart';

///Undo/Redoを持つUndoStackを管理
abstract interface class IUndoRedoState {
  ///もどす
  void undo();

  ///すすむ
  void redo();

  ///変更を追加
  void push(IUndoCommand command);
}

///単一の[T]型を返すUndo/Redoを持つUndoStackを管理
///acceptで
class UndoRedoState<T> {
  ///変更を加えたリスト
  final List<T> accepts = [];

  final UndoStack _stack = UndoStack();

  ///初期化
  ///acceptしていない現在の情報はクリアされる
  void init(T stateValue) {
    if (accepts.any((t) => t == stateValue)) {
      return;
    }
    accepts.add(stateValue);
  }

  ///変更認定
  void push(IUndoCommand command) {
    _stack.push(command);
  }

  ///編集アイテムを追加する
  void pushEdit(T value, IUndoCommand command) {
    init(value);
    _stack.push(command);
  }

  ///全部クリアする
  void clearAll() {
    accepts.clear();
    _stack.clear();
  }

  ///もどす
  void undo() => _stack.undo();

  ///すすむ
  void redo() => _stack.redo();
}
