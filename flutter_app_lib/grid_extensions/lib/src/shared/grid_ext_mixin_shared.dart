import '../adapter/adapter.dart';
import '../import.dart';

abstract interface class IGridExtMixinShared<R> {
  ///trina_gridの状態管理
  TrinaGridStateManager get stateManager;

  ///使用する列群
  List<TrinaColumn> get columns;

  ///データ取得のサービスの状態
  QueryState<R> get queryState;

  ///レポジトリから取得した結果を変換
  IResultAdapterConverter<R> get converter;

  ///TrinaGridのフィルターから、条件式モデルを生成する
  IFilterExpressionAdapter<R> get filterAdapter;
}
