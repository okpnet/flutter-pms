import 'package:undo_redo/lib.dart';

///特定のオブジェクトを監視する
abstract class IUndoValueStack {
  ///戻すが可能なときTrue
  bool get isUndo;

  ///進むが可能なときTrue
  bool get isRedo;

  ///値を持っているか
  bool hasValue(dynamic value);

  ///もとに戻す
  T? undo<T>();

  ///すすむ
  T? redo<T>();

  ///変更をスタックに戻すを追加
  void push<T>(T value, IUndoCommand command, {bool isImmediately = true});

  ///履歴の消去
  void clear();
}

///特定のオブジェクトを監視する
class UndoValueStack implements IUndoValueStack {
  ///戻すスタックリスト。後ろほど新しい
  final List<IUndoCommand> _undo = [];

  ///進むスタックリスト。後ろほど新しい
  final List<IUndoCommand> _redo = [];

  ///コマンドをキーにした、値
  final Map<IUndoCommand, dynamic> _commandValueMap = {};

  UndoValueStack();

  ///戻すが可能なときTrue
  @override
  bool get isUndo => _undo.isNotEmpty;

  ///進むが可能なときTrue
  @override
  bool get isRedo => _redo.isNotEmpty;

  ///値を持っているか
  @override
  bool hasValue(dynamic value) => _commandValueMap.containsValue(value);

  ///変更前にスタックに戻すを追加
  @override
  void push<T>(T value, IUndoCommand command, {bool isImmediately = true}) {
    if (isImmediately) {
      command.redo();
    }
    _commandValueMap[command] = value;
    _undo.add(command);
    _redo.clear();
  }

  ///もとに戻す
  @override
  T? undo<T>() {
    if (!isUndo) {
      return null;
    }
    final cmd = _undo.last;
    _undo.removeLast();
    cmd.undo();
    _redo.add(cmd);
    return _commandValueMap[cmd];
  }

  ///すすむ
  @override
  T? redo<T>() {
    if (!isRedo) {
      return null;
    }

    final cmd = _redo.last;
    _redo.removeLast();
    cmd.redo();
    _undo.add(cmd);
    return _commandValueMap[cmd];
  }

  ///履歴の消去
  @override
  void clear() {
    _undo.clear();
    _redo.clear();
  }
}
