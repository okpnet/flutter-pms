// 全画面の検索条件の対応表(lib/src/contents/<画面>_filter_spec.dart)のすべてのキーが、
// 生成モデル(Input$<テーブル>Filter)のfromJson/toJsonで欠落なく往復できること。
// fromJsonは未知のキーを黙って捨てるため、toJsonとの一致で、画面用スキーマに経路が揃っていることを確認する。

import 'package:flutter_test/flutter_test.dart';
import 'package:production_plan_model/production_plan_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

final _roundTrips =
    <String, Map<String, dynamic> Function(Map<String, dynamic>)>{
      'TransOperationsPlanFilter': (j) =>
          Input$TransOperationsPlanFilter.fromJson(j).toJson(),
      'TransProductRezFilter': (j) =>
          Input$TransProductRezFilter.fromJson(j).toJson(),
      'TransPurchaseRezFilter': (j) =>
          Input$TransPurchaseRezFilter.fromJson(j).toJson(),
      'TransResourcePlanFilter': (j) =>
          Input$TransResourcePlanFilter.fromJson(j).toJson(),
      'TransWorkPlanFilter': (j) =>
          Input$TransWorkPlanFilter.fromJson(j).toJson(),
    };

final _specs = <String, FlatFilterSpec>{
  'operations_plan_page': OperationsPlanPageFilterSpec.spec,
  'product_rez_page': ProductRezPageFilterSpec.spec,
  'purchase_rez_page': PurchaseRezPageFilterSpec.spec,
  'resource_plan_page': ResourcePlanPageFilterSpec.spec,
  'work_plan_delay_page': WorkPlanDelayPageFilterSpec.spec,
  'work_plan_page': WorkPlanPageFilterSpec.spec,
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
