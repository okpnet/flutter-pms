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
    final skip = request.page * Configuration.NUM_OF_RECORDS;
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

    final result = SummaryData(
      numberOfRecords: rowJson.length,
      filteredNumberOfRecords: stateManager.hasFilter
          ? request.filterRows.length
          : null,
    );
    summaryState.setSummaryValue(result);

    // ページング処理
    //stateManagerProviders.setShowLoading(false);
    return TrinaLazyPaginationResponse(rows: rowJson, totalPage: 100);
  }
}
