import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/nodes/root_condition.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/search_condition.dart';
import 'package:utility_widget_example/src/condition_pipeline/converter/condition_vsitor.dart';
import 'package:utility_widget_example/src/condition_pipeline/converter/list_converter/list_operation_visitor.dart';
import 'package:utility_widget_example/src/manager/model/summary_data.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';

typedef ConditionCallback =
    bool Function(T) Function<T>(SearchCondition condition);

typedef WhereCallBack = bool Function(Map<String, dynamic>);

class DemoTreeRederService extends ReaderService<SummaryLoadData> {
  final AssetReader assetReader;

  DemoTreeRederService({required this.assetReader});

  @override
  Future<SummaryLoadData> read(SearchCondition? condition) async {
    final rowJson = switch (await assetReader.toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList => jsonList.value,
      _ => <Map<String, dynamic>>[],
    };
    if (condition is! RootCondition) {
      throw AssertionError('condition shall RootCondition type');
    }

    final visitor = GenericConditionVisitor<Map<String, dynamic>, bool>(
      converter: ListWhereConverter(
        extractValue: (left, conditon) => left[conditon.field],
        opVisitor: ListWhereOperatorVisitor(),
      ),
      combine: (children, rule) {
        return rule == .and ? children.every((p) => p) : children.any((p) => p);
      },
    );
    final predicate = visitor.build(condition);

    final testRow = rowJson.first;
    final result = rowJson.where(predicate).toList();
    final summary = SummaryLoadData(
      loadData: rowJson
          .where(predicate)
          .skip(condition.skip)
          .take(condition.take)
          .toList(),
      filteredNumberOfRecords: rowJson.where(predicate).length,
      numberOfRecords: rowJson.length,
    );
    return summary;
  }
}
