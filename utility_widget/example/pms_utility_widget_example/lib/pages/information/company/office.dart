import 'dart:async';
import 'package:data_strategist/lib.dart';
import 'package:flutter/services.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/constant/my_trina_grid_configs/grid_config_helper.dart';
import 'package:utility_widget_example/pages/container/trina_grid_summary_hader.dart';
import 'package:utility_widget_example/pages/information/company/constants/office_column.dart';
import 'package:utility_widget_example/src/lib/configs/config_state.dart';
import 'package:utility_widget_example/src/lib/grids/grid/state/search_result_info_state.dart';
import 'package:utility_widget_example/src/lib/grids/pagenation/grid_pagenation_mixin.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';
import 'package:utility_widget_example/src/manager/manager.dart';

class Office extends StatefulWidget {
  const Office({super.key});

  @override
  State<StatefulWidget> createState() => OfficeState();
}

class OfficeState extends PmsWidgetState<Office>
    with GridPagenationMixin<JsonMap> {
  final GridState _state = GridState();

  ///条件を絞り込むクエリマネージャ
  final QueryState<JsonMap, SummaryLoadData<List<JsonMap>>> _queryState =
      QueryState<JsonMap, SummaryLoadData<List<JsonMap>>>(
        expressionVisitorType: .list,
        repository: OfficeAsset(),
        cmd: (field) =>
            (t) => t[field],
      );

  late final TrinaGridStateManager _stateManager;

  @override
  QueryState<JsonMap, SummaryLoadData<List<JsonMap>>> get queryState =>
      _queryState;

  @override
  PmsState get state => _state;


  @override
  TrinaGridStateManager get stateManager => _stateManager;
    @override
  ConfigState get configState => ;

  @override
  SearchResultInfoState get searchResultInfoState ;

  // ページネーション設定
  final int pageSize = 20;
  int currentPage = 1;
  int? numberOfRecords;
  int? filteredNumeberOfRecord;

  OfficeState();
  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: true,
      child: UtBody(
        isVirticalScroll: false,
        title: UtText.scetionTitle('事業所'),
        body: PmsStateScope(
          notifier: _state,
          child: TrinaGrid(
            onChanged: (TrinaGridOnChangedEvent event) {
              print(event);
            },
            onLoaded: (event) async {
              //初回に一度だけ呼ばれる
              _stateManager = event.stateManager;
            },
            createHeader: (_) => TrinaGridSummaryHader(summaryState: _state),
            columns: OfficeColumn.columns,
            rows: [],
            onRowSecondaryTap: (event) {},
            configuration: GridConfigHelper.build(),
            createFooter: (stateManager) {
              return TrinaLazyPagination(
                initialPage: 1,
                fetchWithSorting: true,
                fetchWithFiltering: true,
                pageSizeToMove: null,
                stateManager: stateManager,
                fetch: (e) => loadPage(e),
              );
            },
          ),
        ),
      ),
    );
  }


}

final class OfficeAsset extends AssetReader {
  @override
  List<String> get keys => [
    'id',
    'code',
    'name',
    'kana',
    'nickname',
    'update_user',
    'update_at',
  ];
  @override
  FutureOr<String> fromCsv() async {
    await Future.delayed(Duration(seconds: 2));
    return await rootBundle.loadString('demo_data/office.csv');
  }
}
