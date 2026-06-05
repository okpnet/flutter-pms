part of 'grid_provider.dart';

///ページネーション操作を追加する
mixin PagenationOfTrinaGrid on IPmsWidgetState
    implements IGridStateManagerOfTrinaGrid, IPagenationOfTrinaGrid {
  late final TrinaGridStateManager stateManagerProviders;
  final SummaryState _state = SummaryState();

  @override
  PmsState get state => _state;

  @override
  SummaryState get summaryState => _state;

  @override
  TrinaGridStateManager get stateManager => stateManagerProviders;

  ///onLoaded: (event) async で呼び出しする。
  @override
  void setGridStatemnager(TrinaGridStateManager trinaGridStateManager) {
    stateManagerProviders = trinaGridStateManager;
  }

  ///ページの読み込み
  Future<TrinaLazyPaginationResponse> loadPage(
    TrinaLazyPaginationRequest request,
  ) async {
    // stateManagerProviders.setShowLoading(true);
    final rowJson = switch (await readerService.read(request)) {
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
    summaryState.setValue(result);

    // ページング処理
    //stateManagerProviders.setShowLoading(false);
    return TrinaLazyPaginationResponse(rows: rowJson, totalPage: 100);
  }
}
