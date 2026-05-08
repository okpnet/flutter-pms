import 'dart:async';

import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/pages/container/pluto_grid_summary_hader.dart';

mixin PgPagenation {
  ValueNotifier<SummaryData> get listner;
  PlutoGridStateManager get pgStateManager;

  FutureOr<Result<List<Map<String, dynamic>>>> getData();

  Future<PlutoLazyPaginationResponse> loadPage(
    PlutoLazyPaginationRequest request,
  ) async {
    // stateManagerProviders.setShowLoading(true);
    final rowJson = switch (await getData()) {
      Ok<List<Map<String, dynamic>>> jsonList => [
        for (var row in jsonList.value) PlutoRow.fromJson(row),
      ],
      _ => <PlutoRow>[],
    };

    listner.value = SummaryData(
      numberOfRecords: rowJson.length,
      filteredNumberOfRecords: pgStateManager.hasFilter
          ? request.filterRows.length
          : null,
    );
    // ページング処理
    //stateManagerProviders.setShowLoading(false);
    return PlutoLazyPaginationResponse(rows: rowJson, totalPage: 100);
  }
}
