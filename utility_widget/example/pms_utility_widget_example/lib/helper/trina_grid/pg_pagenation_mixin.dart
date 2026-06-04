import 'dart:async';

import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/demo/demo_summary_state.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/src/ui/pms_widget_state.dart';

mixin PgPagenationMixin<T extends StatefulWidget> on IHeade {
  AssetReader get assetReader;

  Future<TrinaLazyPaginationResponse> loadPage(
    TrinaLazyPaginationRequest request,
  ) async {
    // stateManagerProviders.setShowLoading(true);
    final rowJson = switch (await assetReader.toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList => [
        for (var row in jsonList.value) TrinaRow.fromJson(row),
      ],
      _ => <TrinaRow>[],
    };

    if (state case DemoSummaryState demoSummaryState) {
      final result = SummaryData(
        numberOfRecords: rowJson.length,
        filteredNumberOfRecords: pgStateManager.hasFilter
            ? request.filterRows.length
            : null,
      );
      demoSummaryState.setValue(result);
    }

    // ページング処理
    //stateManagerProviders.setShowLoading(false);
    return TrinaLazyPaginationResponse(rows: rowJson, totalPage: 100);
  }
}
