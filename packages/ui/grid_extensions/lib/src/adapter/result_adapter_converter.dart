import 'result_adapter.dart';

///レポジトリから取得した結果を変換
///ヘッダに使う情報のNotifierはこのクラスで行う
abstract interface class IResultAdapterConverter<R> {
  ///レポジトリの結果を変換
  ///ヘッダに使う情報のNotifierはこのメソッドで行う
  IResultAdapter convertTo(R result);
}
