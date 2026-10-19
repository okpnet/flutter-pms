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
  void push(IUndoCommand command, {bool isImmediately = true});

  ///履歴の消去
  void clear();
}

///オブジェクトを監視する
class UndoStack implements IUndoStack {
  ///戻すスタックリスト。後ろほど新しい
  final List<IUndoCommand> _undo = [];

  ///進むスタックリスト。後ろほど新しい
  final List<IUndoCommand> _redo = [];

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
  void push(IUndoCommand command, {bool isImmediately = true}) {
    if (isImmediately) {
      command.redo();
    }
    _undo.add(command);
    _redo.clear();
  }

  ///もとに戻す
  @override
  bool undo() {
    if (!isUndo) {
      return false;
    }
    final cmd = _undo.last;
    _undo.removeLast();
    cmd.undo();
    _redo.add(cmd);
    return true;
  }

  ///すすむ
  @override
  bool redo() {
    if (!isRedo) {
      return false;
    }

    final cmd = _redo.last;
    _redo.removeLast();
    cmd.redo();
    _undo.add(cmd);
    return true;
  }

  ///履歴の消去
  @override
  void clear() {
    _undo.clear();
    _redo.clear();
  }
}
