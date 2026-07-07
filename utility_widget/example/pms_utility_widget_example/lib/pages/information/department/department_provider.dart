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
  ///最上位の検索条件
  final parentFoundEx = EqualExpression(
    FieldExpression<JsonMap>((t) => t['parent_id']),
    FieldExpression<JsonMap>((t) => t['id']),
  );

  ///読み込み最初の条件式。以降は[PridicateCallback]が呼ばれる
  @override
  IPredicateModel get initiBuildPredicate {
    final pridicate = PredicateModel(
      take: Configuration.NUM_OF_RECORDS,
      skip: 0,
      pridicate: AndExpression([parentFoundEx]),
    );
    return pridicate;
  }

  ///読み込みの条件式
  ///Nullのとき、トップノード
  @override
  IPredicateModel buildPredicate(
    TrinaRow? parentRow,
    TreeLoadStatus treeState,
  ) {
    final otherPridicate = stateManager.hasFilter
        ? queryState.adapter.build(
            Configuration.NUM_OF_RECORDS,
            filterRows: stateManager.filterRows,
          )
        : null;

    final pridicate = PredicateModel(
      take: Configuration.NUM_OF_RECORDS,
      skip: treeState.current + Configuration.NUM_OF_RECORDS,
      pridicate: AndExpression([
        parentRow == null
            ? parentFoundEx
            : EqualExpression(
                FieldExpression<JsonMap>((t) => t['parent_id']),
                ValueExpression(parentRow.cells['id']!.value.toString()),
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
