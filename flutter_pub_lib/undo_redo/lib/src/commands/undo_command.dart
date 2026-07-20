///戻すデリゲート
typedef ExecuteCallback<T> = void Function(T?);

///戻す機能のインターフェイス
abstract interface class IUndoCommand {
  ///戻るが行われたときに実行
  void undo();

  ///進むが行われたときに実行
  void redo();
}

///基本クラス
class ValueUndoCommand<T> implements IUndoCommand {
  ///値をセットする
  final ExecuteCallback<T> _execute;

  ///基の値
  ////Tni値がセットされる前にコマンドを生成する
  final T? newVvalue;

  ////Tni値がセットされる前にコマンドを生成する
  final T? oldValue;

  ///コンストラクタ
  ///[currentValue]戻るで適用する値
  ///[valueToApply]新しく適用する値
  ///[execute]値を適用するメソッド
  ValueUndoCommand({
    required T? currentValue,
    required T? valueToApply,
    required ExecuteCallback<T> execute,
  }) : _execute = execute,
       newVvalue = valueToApply,
       oldValue = currentValue;

  ///戻るが行われたときに実行
  @override
  void undo() => _execute(oldValue);

  ///進むが行われたときに実行
  @override
  void redo() => _execute(newVvalue);
}
