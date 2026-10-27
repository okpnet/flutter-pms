// 全画面の検索条件の対応表(lib/src/contents/<画面>_filter_spec.dart)のすべてのキーが、
// 生成モデル(Input$<テーブル>Filter)のfromJson/toJsonで欠落なく往復できること。
// fromJsonは未知のキーを黙って捨てるため、toJsonとの一致で、画面用スキーマに経路が揃っていることを確認する。

import 'package:flutter_test/flutter_test.dart';
import 'package:work_record_model/work_record_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

final _roundTrips =
    <String, Map<String, dynamic> Function(Map<String, dynamic>)>{
      'TransCertificateFilter': (j) =>
          Input$TransCertificateFilter.fromJson(j).toJson(),
      'TransContainerFilter': (j) =>
          Input$TransContainerFilter.fromJson(j).toJson(),
      'TransConveyFilter': (j) => Input$TransConveyFilter.fromJson(j).toJson(),
      'TransInventoryApplyFilter': (j) =>
          Input$TransInventoryApplyFilter.fromJson(j).toJson(),
      'TransInventoryRequestFilter': (j) =>
          Input$TransInventoryRequestFilter.fromJson(j).toJson(),
      'TransPurchaseCertificationFilter': (j) =>
          Input$TransPurchaseCertificationFilter.fromJson(j).toJson(),
      'TransVisiterFilter': (j) =>
          Input$TransVisiterFilter.fromJson(j).toJson(),
      'TransWorkRecordCertificateFilter': (j) =>
          Input$TransWorkRecordCertificateFilter.fromJson(j).toJson(),
      'TransWorkRecordFilter': (j) =>
          Input$TransWorkRecordFilter.fromJson(j).toJson(),
    };

final _specs = <String, FlatFilterSpec>{
  'certificate_page': CertificatePageFilterSpec.spec,
  'container_page': ContainerPageFilterSpec.spec,
  'convey_page': ConveyPageFilterSpec.spec,
  'inventory_apply_page': InventoryApplyPageFilterSpec.spec,
  'inventory_request_page': InventoryRequestPageFilterSpec.spec,
  'purchase_certification_page': PurchaseCertificationPageFilterSpec.spec,
  'visiter_page': VisiterPageFilterSpec.spec,
  'work_record_certificate_page': WorkRecordCertificatePageFilterSpec.spec,
  'work_record_page': WorkRecordPageFilterSpec.spec,
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
