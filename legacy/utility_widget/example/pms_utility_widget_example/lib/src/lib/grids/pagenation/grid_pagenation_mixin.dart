import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/src/lib/grids/grid/grids.dart';

import '../../constants/constant.dart';
import '../grid/providers/gridable_mixin.dart';

///LazyPageのGridView用のMixin
///TはQueryの引数の型
///[R]はQueryの戻り値の型
mixin GridPagenationMixin<T> //, R>
    implements IGridableMixin<T, SearchResultInfoDataModel<JsonMapList>> {
  ///ページの読み込み
  Future<TrinaLazyPaginationResponse> loadPage(
    TrinaLazyPaginationRequest request,
  ) async {
    final rows = stateManager.filterRows;
    final columns = stateManager.columns;
    final skip = (request.page - 1) * configState.config.fetchLimit;
    final pridicateModel = queryState.adapter.build(
      configState.config.fetchLimit,
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
