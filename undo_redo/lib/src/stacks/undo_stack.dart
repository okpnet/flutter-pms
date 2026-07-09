import 'package:undo_redo/src/commands/commands.dart';

abstract class IUndoStack {
  ///戻すが可能なときTrue
  bool get isUndo;

  ///進むが可能なときTrue
  bool get isRedo;

  ///もとに戻す
  bool undo();

  ///すすむ
  bool redo();

  ///変更をスタックに戻すを追加
  void push(IUndoCommand command);

  ///履歴の消去
  void clear();
}

///特定のオブジェクトを監視する
class UndoStack implements IUndoStack {
  ///戻すスタックリスト。後ろほど新しい
  final List<IUndoCommand> _undo = [];

  ///進むスタックリスト。後ろほど新しい
  final List<IUndoCommand> _redo = [];

  ///現在の状態
  IUndoCommand? _current;

  UndoStack();

  ///初期値をもつUndoStack
  factory UndoStack.to(IUndoCommand command) {
    final result = UndoStack();
    result.push(command);
    return result;
  }

  ///戻すが可能なときTrue
  @override
  bool get isUndo => _undo.isNotEmpty;

  ///進むが可能なときTrue
  @override
  bool get isRedo => _redo.isNotEmpty;

  ///変更前にスタックに戻すを追加
  @override
  void push(IUndoCommand command) {
    command.redo();
    if (_current != null) {
      _undo.add(_current!);
    }
    _current = command;
  }

  ///もとに戻す
  @override
  bool undo() {
    if (!isUndo) {
      return false;
    }
    if (_current != null) {
      _redo.add(_current!);
    }
    _current = _undo.last;
    _undo.removeLast();
    _current!.undo();
    return true;
  }

  ///すすむ
  @override
  bool redo() {
    if (!isRedo) {
      return false;
    }
    if (_current != null) {
      _undo.add(_current!);
    }

    _current = _redo.last;
    _redo.removeLast();
    _current!.redo();
    return true;
  }

  ///履歴の消去
  @override
  void clear() {
    _current = null;
    _undo.clear();
    _redo.clear();
  }
}
