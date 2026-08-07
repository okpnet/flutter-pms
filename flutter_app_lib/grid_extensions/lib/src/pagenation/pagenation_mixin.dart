import '../import.dart';
import '../shared/shared.dart';

///LazyPageのGridView用のMixin
///TはQueryの引数の型
///[R]はQueryの戻り値の型
mixin GridPagenationMixin<R> implements IGridExtMixinShared<R> {
  ///ページの読み込み
  Future<TrinaLazyPaginationResponse> loadPage(
    TrinaLazyPaginationRequest request,
  ) async {
    final rows = stateManager.filterRows;
    final columns = stateManager.columns;
    final skip = (request.page - 1) * queryState.fetchLimit;

    final pridicateModel = filterAdapter.build(
      queryState,
      filterRows: rows,
      columns: columns,
      skip: skip,
    );

    final result = await queryState.facade.execute(pridicateModel);
    final summary = converter.convertTo(result);

    // ページング処理
    return TrinaLazyPaginationResponse(
      rows: summary.rows,
      totalRecords: summary.filteredNumberOfRecords,
      totalPage: ((summary.filteredNumberOfRecords ?? 0) / request.pageSize)
          .ceil(),
    );
  }
}
