import 'package:uuid/uuid.dart';

import '../../constants/constants.dart';
import '../import.dart';
import '../shared/shared.dart';

///LazyPageのGridView用のMixin
///TはQueryの引数の型
///[R]はQueryの戻り値の型
mixin GridPagenationMixin<R> implements IGridExtMixinShared<R> {
  ///ユニークキー列の追加
  void initColumns() {
    // column.renderer = _renderer;
    stateManager.insertColumns(0, [
      TrinaColumn(
        //キー
        title: KeyConstant.uniqKey,
        field: KeyConstant.uniqKey,
        type: TrinaColumnType.text(),
        hide: true,
      ),
    ]);
  }

  ///ページの読み込み
  Future<TrinaLazyPaginationResponse> loadPage(
    TrinaLazyPaginationRequest request,
  ) async {
    if (0 > //初期化忘れの回避
        stateManager.columns.indexWhere(
          (t) => t.field == KeyConstant.uniqKey,
        )) {
      initColumns();
    }

    final rows = stateManager.filterRows;
    final skip = (request.page - 1) * queryState.fetchLimit;

    final pridicateModel = filterAdapter.build(
      queryState,
      filterRows: rows,
      columns: columns,
      skip: skip,
    );

    final result = await queryState.facade.execute(pridicateModel);
    final summary = converter.convertTo(result);

    final addRows = summary.rows.map((map) => buildTrinaRow(map)).toList();

    // ページング処理
    return TrinaLazyPaginationResponse(
      rows: addRows,
      totalRecords: summary.filteredNumberOfRecords,
      totalPage: ((summary.filteredNumberOfRecords ?? 0) / request.pageSize)
          .ceil(),
    );
  }

  ///データから行生成
  TrinaRow buildTrinaRow(GridExtensionMap json, {TrinaRow? parentRow}) {
    final result = TrinaRow(
      type: .group(children: FilteredList<TrinaRow>(initialList: [])),
      cells: {
        for (final col in columns)
          col.field: TrinaCell(
            value: col.field == KeyConstant.uniqKey
                ? const Uuid().v4()
                : json[col.field],
          ),
      },
      data: json,
    );
    result.setParent(parentRow);
    return result;
  }
}
