import '../../lib.dart';

typedef EqualableCallback = bool Function(dynamic, dynamic);

///コマンドだけをもつ
abstract interface class IUndoStackCommand {
  IUndoCommand get command;
}

///ターゲットを保持している
abstract interface class IUndoDirtyTargetCommand extends IUndoStackCommand {
  dynamic get target;
}

///コマンドだけをもつクラス
class UndoStackCommand implements IUndoStackCommand {
  @override
  final IUndoCommand command;
  UndoStackCommand(this.command);
}

///ターゲットとコマンドを持つ
class UndoDirtyTargetCommand implements IUndoDirtyTargetCommand {
  @override
  final dynamic target;
  @override
  final IUndoCommand command;
  UndoDirtyTargetCommand({required this.command, required this.target});
}

///ストリーム風に流れを把握しているスタック
abstract class IUndoTargetStack {
  ///戻すが可能なときTrue
  bool get isUndo;

  ///進むが可能なときTrue
  bool get isRedo;

  ///もとに戻す
  bool undo();

  ///すすむ
  bool redo();

  ///変更をスタックに戻すを追加
  void push(dynamic target, IUndoCommand command, {bool isImmediately = true});

  ///履歴の消去
  void clear();

  ///変更されているか
  bool isDirty(dynamic target, {EqualableCallback? equalable});

  ///登録した複数のターゲットが変更されているものがあるか
  bool get hasDirty;
}

///ストリーム風に流れを把握しているUndoRedoスタック
class UndoTartgetStack extends IUndoTargetStack {
  ///戻すスタックリスト。後ろほど新しい
  final List<IUndoStackCommand> _undo = [];

  ///進むスタックリスト。後ろほど新しい
  final List<IUndoStackCommand> _redo = [];

  ///戻すが可能なときTrue
  @override
  bool get isUndo => _undo.isNotEmpty;

  ///進むが可能なときTrue
  @override
  bool get isRedo => _redo.isNotEmpty;

  ///登録した複数のターゲットが変更されているものがあるか
  @override
  bool get hasDirty => _undo.any((t) => t is IUndoDirtyTargetCommand);

  ///変更前にスタックに戻すを追加
  @override
  void push(
    dynamic target,
    IUndoCommand command, {
    bool isImmediately = true,
    EqualableCallback? equalable,
  }) {
    if (isImmediately) {
      command.redo();
    }
    final hasTarget = isDirty(target, equalable: equalable);
    _undo.add(
      hasTarget
          ? UndoStackCommand(command)
          : UndoDirtyTargetCommand(command: command, target: target),
    );
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
    cmd.command.undo();
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
    cmd.command.redo();
    _undo.add(cmd);
    return true;
  }

  ///履歴の消去
  @override
  void clear() {
    _undo.clear();
    _redo.clear();
  }

  ///変更されているか
  @override
  bool isDirty(dynamic target, {EqualableCallback? equalable}) {
    return _undo
        .whereType<IUndoDirtyTargetCommand>()
        .where(
          (t) => equalable == null
              ? t.target == target
              : equalable(t.target, target),
        )
        .isNotEmpty;
  }
}
