import 'dart:async';

import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/extensions/pluto_grid/trina_row_extension.dart';
import 'package:utility_widget_example/src/manager/compare/comare.dart';
import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';
import 'package:utility_widget_example/src/manager/state/pms_state.dart';
import 'package:utility_widget_example/src/manager/state/summary_state.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';

part 'pagenation_provider.dart';
part 'tree_provider.dart';

///TrinaGridのstateManagerを保持するインターフェイス。PultoGridから以降した。
abstract class IGridStateManagerOfTrinaGrid {
  ///
  SummaryState get summaryState;

  ///
  TrinaGridStateManager get stateManager;

  ///
  void setGridStatemnager(TrinaGridStateManager trinaGridStateManager);
}

///ツリー
abstract class ITreeGridStateManagerOfTrinaGrid {
  ReaderService<String> get readerService;

  JsonMapComapre get parentCompare;
}

///読み込みサービス付きインターフェイス
abstract class IPagenationOfTrinaGrid {
  ReaderService<TrinaLazyPaginationRequest> get readerService;
}
