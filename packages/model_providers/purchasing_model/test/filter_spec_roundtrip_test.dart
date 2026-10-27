// 全画面の検索条件の対応表(lib/src/contents/<画面>_filter_spec.dart)のすべてのキーが、
// 生成モデル(Input$<テーブル>Filter)のfromJson/toJsonで欠落なく往復できること。
// fromJsonは未知のキーを黙って捨てるため、toJsonとの一致で、画面用スキーマに経路が揃っていることを確認する。

import 'package:flutter_test/flutter_test.dart';
import 'package:purchasing_model/purchasing_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

final _roundTrips =
    <String, Map<String, dynamic> Function(Map<String, dynamic>)>{
      'MstrStakeholderFilter': (j) =>
          Input$MstrStakeholderFilter.fromJson(j).toJson(),
      'TransPurchaseDetailFilter': (j) =>
          Input$TransPurchaseDetailFilter.fromJson(j).toJson(),
      'TransPurchaseFilter': (j) =>
          Input$TransPurchaseFilter.fromJson(j).toJson(),
      'TransPurchaseRecFilter': (j) =>
          Input$TransPurchaseRecFilter.fromJson(j).toJson(),
      'TransUnrecognizedDetailFilter': (j) =>
          Input$TransUnrecognizedDetailFilter.fromJson(j).toJson(),
      'TransUnrecognizedFilter': (j) =>
          Input$TransUnrecognizedFilter.fromJson(j).toJson(),
    };

final _specs = <String, FlatFilterSpec>{
  'purchase_detail_page': PurchaseDetailPageFilterSpec.spec,
  'purchase_page': PurchasePageFilterSpec.spec,
  'purchase_rec_page': PurchaseRecPageFilterSpec.spec,
  'supplier_page': SupplierPageFilterSpec.spec,
  'unrecognized_detail_page': UnrecognizedDetailPageFilterSpec.spec,
  'unrecognized_page': UnrecognizedPageFilterSpec.spec,
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
