import 'dart:async';

import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/constant/results/summary_data.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_header_mixin.dart';

mixin PgPagenationMixin<T extends StatefulWidget> on State<T>, PgHeaderMixin {
  PlutoGridStateManager get pgStateManager;

  AssetReader get assetReader;

  Future<PlutoLazyPaginationResponse> loadPage(
    PlutoLazyPaginationRequest request,
  ) async {
    // stateManagerProviders.setShowLoading(true);
    final rowJson = switch (await assetReader.toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList => [
        for (var row in jsonList.value) PlutoRow.fromJson(row),
      ],
      _ => <PlutoRow>[],
    };

    summaryNotifier.value = SummaryData(
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
