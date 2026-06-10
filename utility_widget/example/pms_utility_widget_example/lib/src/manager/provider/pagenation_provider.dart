part of 'grid_provider.dart';

///ページネーション操作を追加する
mixin PagenationOfTrinaGrid on IPmsWidgetState
    implements IGridStateManagerOfTrinaGrid, IPagenationOfTrinaGrid {
  ///ページの読み込み
  Future<TrinaLazyPaginationResponse> loadPage(
    TrinaLazyPaginationRequest request,
    int take,
  ) async {
    final root = ToSortConditionHelper.fromTrinaLazyPaginationRequest(
      request: request,
      take: take,
    );

    // stateManagerProviders.setShowLoading(true);
    final rowJson = switch (await readerService.read(root)) {
      Ok<List<Map<String, dynamic>>> jsonList => [
        for (var row in jsonList.value) TrinaRow.fromJson(row), //ここは変換プロバイダに変更
      ],
      _ => <TrinaRow>[],
    };

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
