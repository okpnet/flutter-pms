import 'package:data_strategist/lib.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/src/lib/configs/config_state.dart';

import '../state/search_result_info_state.dart';

typedef JsonMap = Map<String, dynamic>;
typedef JsonMapList = List<Map<String, dynamic>>;

///Gridに使用できるMixinの基本情報
///TはQueryの引数の型
///[R]はQueryの戻り値の型
abstract interface class IGridableMixin<T, R> {
  ///trina_gridの状態管理
  TrinaGridStateManager get stateManager;

  ///読み込んだ情報の状態管理
  SearchResultInfoState get searchResultInfoState;

  ///データ取得のサービスの状態
  QueryState<T, R> get queryState;

  ///設定の状態管理
  ConfigState get configState;
}
