import 'dart:async';
import 'dart:convert';

import 'package:data_strategist/lib.dart';
import 'package:query_builder/query_builder.dart';
import 'package:utility_widget/core/ut_widget_design.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/src/manager/provider/grid_provider.dart';

///デモで使用する、QueryStateに渡すレポジトリのベースクラス
abstract class AssetReader
    implements IDataRepository<SummaryLoadData<List<JsonMap>>> {
  List<String> get keys;
  FutureOr<String> fromCsv();
  FutureOr<Result<List<Map<String, dynamic>>>> toJsonFromCsv() async {
    try {
      final buffer = await fromCsv();
      // UTF-8 のみ許可
      final bytes = utf8.encode(buffer);
      final decoded = utf8.decode(bytes);

      final lines = LineSplitter.split(decoded).toList();
      if (lines.isEmpty) {
        throw FormatException("CSV が空です");
      }
      // 1 行目はヘッダとして無視（keys を使うため）
      final dataLines = lines.skip(1);

      final result = <Map<String, dynamic>>[];
      for (final line in dataLines) {
        final values = line.split(',');

        if (values.length != keys.length) {
          throw FormatException(
            "列数が一致しません: expected=${keys.length}, actual=${values.length}",
          );
        }

        final map = <String, dynamic>{};
        for (int i = 0; i < keys.length; i++) {
          map[keys[i]] = values[i];
        }

        result.add(map);
      }

      return Ok(result);
    } catch (e, st) {
      return Failure(error: e as Error, stackTrace: st);
    }
  }

  @override
  Future<SummaryLoadData<List<JsonMap>>> find({
    required int take,
    int skip = 0,
    Expression? pridicate,
    SortExpression? order,
  }) async {
    final rowJson = switch (await toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList => jsonList.value,
      _ => <Map<String, dynamic>>[],
    };
    final numOfrows = rowJson.length;
    final builder = ListExpressionBuilder<Map<String, dynamic>>();

    if (pridicate != null) {
      debugPrint('debug pridicate:${pridicate.buildDebug()}');
    }

    final result = pridicate != null
        ? rowJson.where(builder.build(pridicate)).toList()
        : rowJson;

    if (order != null) {
      final sortBuilder = SortListExpressionBuilder<Map<String, dynamic>>();
      final sorts = sortBuilder.build(order);
      result.sort(sorts);
    }
    return SummaryLoadData(
      loadData: result,
      filteredNumberOfRecords: result.length,
      numberOfRecords: numOfrows,
    );
  }
}
