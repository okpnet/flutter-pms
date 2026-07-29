import 'package:data_strategist/lib.dart';
import 'package:flutter/widgets.dart';
import 'package:trina_grid/trina_grid.dart';

import '../../configs/configs.dart';
import '../grid/grids.dart';
import '../widgets/widgets.dart';

class GridPagenationWidget extends StatefulWidget {
  ///列のリスト
  final List<TrinaColumn> columnList;

  ///条件を絞り込むクエリマネージャ
  final IQueryState queryState;

  ///TrinaGridの設定
  final TrinaGridConfiguration gridConfig;

  const GridPagenationWidget({
    super.key,
    required this.columnList,
    required this.queryState,
    TrinaGridConfiguration? config,
  }) : gridConfig =
           config ??
           const TrinaGridConfiguration(
             selectingMode: .row,
             columnSize: TrinaGridColumnSizeConfig(
               autoSizeMode: TrinaAutoSizeMode.scale,
             ),
           );
  @override
  State<StatefulWidget> createState() => _GridPagenationWidget();
}

class _GridPagenationWidget extends State<GridPagenationWidget> {
  ///TrinaGridの状態管理
  late final TrinaGridStateManager _stateManager;

  ///TrinaGridの状態管理
  TrinaGridStateManager get stateManager => _stateManager;

  ///検索結果状態管理
  final SearchResultInfoState searchResultInfoState = SearchResultInfoState();

  ///設定状態管理
  final ConfigState configState = ConfigState(ConfigModel());

  @override
  Widget build(BuildContext context) {
    return GridScope(
      notifier: searchResultInfoState,
      child: TrinaGrid(
        onChanged: (TrinaGridOnChangedEvent event) {
          print(event);
        },
        onLoaded: (event) async {
          //初回に一度だけ呼ばれる
          _stateManager = event.stateManager;
        },
        createHeader: (_) =>
            TrinaGridSummaryHader(searchResultInfoState: searchResultInfoState),
        columns: widget.columnList,
        rows: [],
        onRowSecondaryTap: (event) {},
        configuration: widget.gridConfig,
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
    );
  }

  ///ページの読み込み
  Future<TrinaLazyPaginationResponse> loadPage(
    TrinaLazyPaginationRequest request,
  ) async {
    final rows = stateManager.filterRows;
    final columns = stateManager.columns;
    final skip = (request.page - 1) * configState.config.fetchLimit;
    final pridicateModel = widget.queryState.adapter.build(
      configState.config.fetchLimit,
      filterRows: rows,
      columns: columns,
      skip: skip,
    );

    final resultSummary =
        await widget.queryState.facade.execute(pridicateModel)
            as SearchResultInfoDataModel;
    final rowJson = [
      for (var row in resultSummary.loadData) TrinaRow.fromJson(row),
    ];

    final result = resultSummary.copyWith(
      //フィルタされていないときもフィルタレコード数が含まれるので、表示に「条件付き」が含まれないようにNullにする
      filteredNumberOfRecords: stateManager.hasFilter
          ? resultSummary.filteredNumberOfRecords
          : null,
    );

    searchResultInfoState.set(result);

    // ページング処理
    return TrinaLazyPaginationResponse(
      rows: rowJson,
      totalRecords: resultSummary.filteredNumberOfRecords,
      totalPage:
          ((resultSummary.filteredNumberOfRecords ?? 0) / request.pageSize)
              .ceil(),
    );
  }
}
