import 'dart:async';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/extensions/pluto_grid/trina_column_extension.dart';
import 'package:utility_widget_example/extensions/pluto_grid/trina_row_extension.dart';
import 'package:utility_widget_example/src/condition_pipeline/adapter/to_sort_condition_helper.dart';
import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';
import 'package:utility_widget_example/src/manager/state/grid_state.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';
import 'package:data_strategist/data_strategist.dart';

part 'pagenation_provider.dart';
part 'tree_provider.dart';

typedef JsonMap = Map<String, dynamic>;
typedef PridicateCallback = IPridicateModel Function(TrinaRow row);

///TrinaGridのstateManagerを保持するインターフェイス。PultoGridから以降した。
abstract class IGridStateManagerOfTrinaGrid {
  ///データの合計、条件適合数の情報の状態管理
  GridState get summaryState;

  ///trina_gridの状態管理マネージャ
  TrinaGridStateManager get stateManager;
}

///ツリー表現をするtrina_gridのプロバイダインターフェイス
abstract class ITreeGridStateManagerOfTrinaGrid<T, R> {
  ///データ取得サービス
  ReaderService<T> get readerService;

  ///読み込み最初の条件式。以降は[toCondition]が呼ばれる
  IPridicateModel get toInitCondition;

  ///最初以降の展開時の条件式
  PridicateCallback get toCondition;

  ///データ取得のサービスの状態
  QueryState<T, R> get queryState;
}

///ペーzネーションをするtrina_gridのプロバイダインターフェイス
abstract class IPagenationOfTrinaGrid<T, R> {
  ///データ取得のサービスの状態
  QueryState<T, R> get queryState;
}
