part of 'grid_provider.dart';

///ページネーション操作を追加する
mixin PagenationOfTrinaGrid<T> on IPmsWidgetState
    implements
        IGridStateManagerOfTrinaGrid,
        IPagenationOfTrinaGrid<T, SummaryLoadData<List<JsonMap>>> {
  ///ページの読み込み
  Future<TrinaLazyPaginationResponse> loadPage(
    TrinaLazyPaginationRequest request,
  ) async {
    final rows = stateManager.filterRows;
    final columns = stateManager.columns;
    final skip = (request.page - 1) * Configuration.NUM_OF_RECORDS;
    final pridicateModel = queryState.adapter.build(
      Configuration.NUM_OF_RECORDS,
      filterRows: rows,
      columns: columns,
      skip: skip,
    );

    final resultSummary = await queryState.facade.execute(pridicateModel);
    final rowJson = [
      for (var row in resultSummary.loadData) TrinaRow.fromJson(row),
    ];

    final result = resultSummary.copyWith(
      //フィルタされていないときもフィルタレコード数が含まれるので、表示に「条件付き」が含まれないようにNullにする
      filteredNumberOfRecords: stateManager.hasFilter
          ? resultSummary.filteredNumberOfRecords
          : null,
    );

    summaryState.setSummaryValue(result);

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
