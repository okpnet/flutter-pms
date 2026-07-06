import 'dart:async';

import 'package:data_strategist/lib.dart';
import 'package:flutter/services.dart';
import 'package:query_builder/query_builder.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/constant/demo/configuration.dart';
import 'package:utility_widget_example/src/manager/manager.dart';

mixin DepartmentProvider<T>
    implements
        IGridStateManagerOfTrinaGrid,
        ITreeGridStateManagerOfTrinaGrid<T, SummaryLoadData<List<JsonMap>>> {
  ///読み込み最初の条件式。以降は[PridicateCallback]が呼ばれる
  @override
  IPridicateModel get toInitCondition {
    final pridicate = PridicateModel(
      take: Configuration.NUM_OF_RECORDS,
      skip: 0,
      pridicate: AndExpression([
        EqualExpression(
          FieldExpression<JsonMap>((t) => t['parent_id']),
          FieldExpression<JsonMap>((t) => t['id']),
        ),
      ]),
    );
    return pridicate;
  }

  ///読み込みの条件式
  @override
  IPridicateModel toCondition(TrinaRow parentRow, TreeLoadStattus treeState) {
    final otherPridicate = stateManager.hasFilter
        ? queryState.adapter.build(
            Configuration.NUM_OF_RECORDS,
            filterRows: stateManager.filterRows,
          )
        : null;

    final pridicate = PridicateModel(
      take: Configuration.NUM_OF_RECORDS,
      skip: treeState.current + Configuration.NUM_OF_RECORDS,
      pridicate: AndExpression([
        EqualExpression(
          FieldExpression<JsonMap>((t) => t['parent_id']),
          ValueExpression(parentRow.cells['id']!.value),
        ),
        ?otherPridicate?.pridicate,
      ]),
    );
    return pridicate;
  }
}

final class DepaertmentAsset extends AssetReader {
  @override
  List<String> get keys => [
    'id',
    'parent_id',
    'child_number_of_records',
    'code',
    'name',
    'kana',
    'nickname',
    'update_at',
    'update_user',
  ];
  @override
  FutureOr<String> fromCsv() async {
    await Future.delayed(Duration(seconds: 2));
    return await rootBundle.loadString('demo_data/department.csv');
  }
}
