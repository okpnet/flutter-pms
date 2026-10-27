// 全画面の検索条件の対応表(lib/src/contents/<画面>_filter_spec.dart)のすべてのキーが、
// 生成モデル(Input$<テーブル>Filter)のfromJson/toJsonで欠落なく往復できること。
// fromJsonは未知のキーを黙って捨てるため、toJsonとの一致で、画面用スキーマに経路が揃っていることを確認する。

import 'package:flutter_test/flutter_test.dart';
import 'package:item_model/item_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

final _roundTrips =
    <String, Map<String, dynamic> Function(Map<String, dynamic>)>{
      'MstrItemActualSizeFilter': (j) =>
          Input$MstrItemActualSizeFilter.fromJson(j).toJson(),
      'MstrItemFilter': (j) => Input$MstrItemFilter.fromJson(j).toJson(),
      'MstrItemKindFilter': (j) =>
          Input$MstrItemKindFilter.fromJson(j).toJson(),
      'MstrItemOperationFilter': (j) =>
          Input$MstrItemOperationFilter.fromJson(j).toJson(),
      'MstrItemOperationTaskFilter': (j) =>
          Input$MstrItemOperationTaskFilter.fromJson(j).toJson(),
      'MstrManufacturerFilter': (j) =>
          Input$MstrManufacturerFilter.fromJson(j).toJson(),
      'MstrOperationFilter': (j) =>
          Input$MstrOperationFilter.fromJson(j).toJson(),
      'MstrSpecMeasurementFilter': (j) =>
          Input$MstrSpecMeasurementFilter.fromJson(j).toJson(),
      'MstrTaskFilter': (j) => Input$MstrTaskFilter.fromJson(j).toJson(),
      'MstrTaskGroupFilter': (j) =>
          Input$MstrTaskGroupFilter.fromJson(j).toJson(),
      'MstrTaskLocationFilter': (j) =>
          Input$MstrTaskLocationFilter.fromJson(j).toJson(),
    };

final _specs = <String, FlatFilterSpec>{
  'item_kind_page': ItemKindPageFilterSpec.spec,
  'item_operation_page': ItemOperationPageFilterSpec.spec,
  'item_operation_task_page': ItemOperationTaskPageFilterSpec.spec,
  'item_page': ItemPageFilterSpec.spec,
  'item_size_page': ItemSizePageFilterSpec.spec,
  'manufacture_page': ManufacturePageFilterSpec.spec,
  'operation_page': OperationPageFilterSpec.spec,
  'spec_measurement_page': SpecMeasurementPageFilterSpec.spec,
  'task_group_page': TaskGroupPageFilterSpec.spec,
  'task_page': TaskPageFilterSpec.spec,
  'task_resource_page': TaskResourcePageFilterSpec.spec,
};

void main() {
  group('全画面の対応表が生成モデル(Input\$...Filter)で往復できる', () {
    for (final entry in _specs.entries) {
      test(entry.key, () {
        final spec = entry.value;
        final roundTrip = _roundTrips[spec.filterType];
        expect(roundTrip, isNotNull, reason: '${spec.filterType}の往復が未登録');
        expect(spec.paths, isNotEmpty);
        final converter = FlatFilterConverter(spec);
        for (final key in spec.paths.keys) {
          final nested = converter.convert(
            {
              key: {'isNull': false},
            },
            variables: {
              'languageCodeId': '00000000-0000-0000-0000-000000000001',
            },
          );
          expect(roundTrip!(nested), nested, reason: '$keyのFilterが生成モデルで欠落する');
        }
        // 全キーを一度に指定しても往復できる(同じ経路の条件が衝突しない)。
        final all = converter.convert(
          {
            for (final k in spec.paths.keys) k: {'isNull': false},
          },
          variables: {'languageCodeId': '00000000-0000-0000-0000-000000000001'},
        );
        expect(roundTrip!(all), all);
      });
    }
  });
}
