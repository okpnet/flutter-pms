import 'package:undo_redo/src/commands/commands.dart';

abstract class IStack {
  ///戻すが可能なときTrue
  bool get isUndo;

  ///進むが可能なときTrue
  bool get isRedo;

  ///もとに戻す
  bool undo();

  ///すすむ
  bool redo();

  ///変更をスタックに戻すを追加
  void addUndo(ICommand command);

  ///変更を実行したあとに戻すに追加
  void executeAdd(ICommand command);

  ///履歴の消去
  void clear(ICommand initialization);
}

///特定のオブジェクトを監視する
class Stack implements IStack {
  ///戻すスタックリスト。後ろほど新しい
  final List<ICommand> _undo = [];

  ///進むスタックリスト。後ろほど新しい
  final List<ICommand> _redo = [];

  ///現在の状態
  ICommand _current;

  Stack(ICommand initialization) : _current = initialization;

  ///戻すが可能なときTrue
  @override
  bool get isUndo => _undo.isNotEmpty;

  ///進むが可能なときTrue
  @override
  bool get isRedo => _redo.isNotEmpty;

  ///変更前にスタックに戻すを追加
  @override
  void addUndo(ICommand command) {
    _undo.add(_current);
    _current = command;
  }

  ///変更を実行したあとに戻すに追加
  @override
  void executeAdd(ICommand command) {
    command.execute(command.oldValue);
    addUndo(command);
  }

  ///もとに戻す
  @override
  bool undo() {
    if (!isUndo) {
      return false;
    }
    _redo.add(_current);
    final cmd = _undo.last;
    _current = cmd;
    _undo.removeLast();
    _current.execute(cmd.oldValue);
    return true;
  }

  ///すすむ
  @override
  bool redo() {
    if (!isRedo) {
      return false;
    }
    _undo.add(_current);
    final cmd = _redo.last;
    _current = cmd;
    _redo.removeLast();
    _current.execute(cmd.oldValue);
    return true;
  }

  ///履歴の消去
  @override
  void clear(ICommand initialization) {
    _current = initialization;
    _undo.clear();
    _redo.clear();
  }
}
