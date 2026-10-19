/// 機能間でやりとりする命令の基底。[R] は実行結果の型。
///
/// インスタンスは [toJson] でエラー追跡用にJSON化できる(復元には使用しない)。
abstract class ActionCommand<R> {
  const ActionCommand();

  /// エラー追跡用のJSON。派生クラスは引数をここへ追加する。
  Map<String, Object?> toJson() => {'type': runtimeType.toString()};

  @override
  String toString() => toJson().toString();
}

/// 画面遷移の命令。[R] は遷移先から戻る値の型。
abstract class PageDestination<R> extends ActionCommand<R> {
  const PageDestination();
}
