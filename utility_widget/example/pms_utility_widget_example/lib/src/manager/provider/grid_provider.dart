import 'dart:async';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/configuration.dart';
import 'package:utility_widget_example/extensions/pluto_grid/trina_column_extension.dart';
import 'package:utility_widget_example/extensions/pluto_grid/trina_row_extension.dart';
import 'package:utility_widget_example/src/manager/manager.dart';
import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/src/manager/state/grid_state.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';
import 'package:data_strategist/lib.dart';

part 'pagenation_provider.dart';
part 'tree_provider.dart';

///TrinaRowの型
typedef JsonMap = Map<String, dynamic>;

///Pridicateを取得するコールバック
typedef PridicateCallback = IPredicateModel Function(TrinaRow row);

///TrinaGridのstateManagerを保持するインターフェイス。PultoGridから以降した。
abstract class IGridStateManagerOfTrinaGrid {
  ///データの合計、条件適合数の情報の状態管理
  GridState get summaryState;

  ///trina_gridの状態管理マネージャ
  TrinaGridStateManager get stateManager;
}

///ツリー表現をするtrina_gridのプロバイダインターフェイス
abstract class ITreeGridStateManagerOfTrinaGrid<T, R> {
  ///読み込み最初の条件式。以降は[toCondition]が呼ばれる
  IPredicateModel get initiBuildPredicate;

  ///最初以降の展開時の条件式
  IPredicateModel buildPredicate(TrinaRow? parentRow, TreeLoadStatus treeState);

  ///データ取得のサービスの状態
  QueryState<T, R> get queryState;

  ///データ管理
  DataState<RowModel> get dataState;
}

///ページネーションをするtrina_gridのプロバイダインターフェイス
abstract class IPagenationOfTrinaGrid<T, R> {
  ///デー
  ///タ取得のサービスの状態
  QueryState<T, R> get queryState;

  ///データ管理
  DataState<RowModel> get dataState;
}
