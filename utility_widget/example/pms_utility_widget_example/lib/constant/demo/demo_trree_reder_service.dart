import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/src/condition_pipeline/condition/search_condition.dart';
import 'package:utility_widget_example/src/condition_pipeline/converter/condition_converter.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';

typedef ConditionCallback =
    bool Function(T) Function<T>(SearchCondition condition);

class DemoTrreeRederService extends ReaderService<RootCondition> {
  final int takeCount;
  final AssetReader assetReader;
  final ConditionConverter converter;

  DemoTrreeRederService({
    required this.assetReader,

    required this.converter,
    this.takeCount = 4,
  });

  @override
  Future<List<Map<String, dynamic>>> read(RootCondition? condition) async {
    final rowJson = switch (await assetReader.toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList => jsonList.value,
      _ => <Map<String, dynamic>>[],
    };

    final conditions = _toFlat(
      condition!,
    ).whereType<FieldCondition>().firstOrNull;

    if (conditions == null) AssertionError('condition null');
    bool Function(Map<String, dynamic>) func = converter.toVariables(condition);
    return rowJson.where(func).skip(condition.skip).take(takeCount).toList();
  }

  List<SearchCondition> _toFlat(SearchCondition condition) {
    final list = <SearchCondition>[];
    if (condition is FieldCondition) {
      list.add(condition);
    }

    if (condition case ParentCondition parent) {
      for (var item in parent.children) {
        list.addAll(_toFlat(item));
      }
    }
    return list;
  }
}
