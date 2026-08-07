import 'result_adapter.dart';

///レポジトリから取得した結果を変換
abstract interface class IResultAdapterConverter<R> {
  ///レポジトリの結果を
  IResultAdapter convertTo(R result);
}
