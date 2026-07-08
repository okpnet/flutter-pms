///戻すデリゲート
typedef SetCallbakc<T> = void Function(T, dynamic);

abstract interface class ICommand {
  ///基の値
  ////Tni値がセットされる前にコマンドを生成する
  dynamic get oldValue;

  ///戻す/進むが行われたときに実行
  void Function(dynamic) get execute;
}

///基本クラス
class Command<T> implements ICommand {
  @override
  final T oldValue;

  @override
  final void Function(dynamic) execute;

  ///戻す/進むが行われたときに実行
  Command(this.oldValue, void Function(T) execute)
    : execute = ((t) => execute(t as T));
}
