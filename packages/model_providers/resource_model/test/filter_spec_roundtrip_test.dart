// 全画面の検索条件の対応表(lib/src/contents/<画面>_filter_spec.dart)のすべてのキーが、
// 生成モデル(Input$<テーブル>Filter)のfromJson/toJsonで欠落なく往復できること。
// fromJsonは未知のキーを黙って捨てるため、toJsonとの一致で、画面用スキーマに経路が揃っていることを確認する。

import 'package:flutter_test/flutter_test.dart';
import 'package:resource_model/resource_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

final _roundTrips =
    <String, Map<String, dynamic> Function(Map<String, dynamic>)>{
      'MstrCapabilityFilter': (j) =>
          Input$MstrCapabilityFilter.fromJson(j).toJson(),
      'MstrEquipmentFilter': (j) =>
          Input$MstrEquipmentFilter.fromJson(j).toJson(),
      'MstrEquipmentKindFilter': (j) =>
          Input$MstrEquipmentKindFilter.fromJson(j).toJson(),
      'MstrInspectionFilter': (j) =>
          Input$MstrInspectionFilter.fromJson(j).toJson(),
      'MstrInspectionKindFilter': (j) =>
          Input$MstrInspectionKindFilter.fromJson(j).toJson(),
      'MstrInspectionOperationFilter': (j) =>
          Input$MstrInspectionOperationFilter.fromJson(j).toJson(),
      'MstrInspectionOperationTaskFilter': (j) =>
          Input$MstrInspectionOperationTaskFilter.fromJson(j).toJson(),
      'MstrLicenseFilter': (j) => Input$MstrLicenseFilter.fromJson(j).toJson(),
      'MstrLocationFilter': (j) =>
          Input$MstrLocationFilter.fromJson(j).toJson(),
      'TransFileFilter': (j) => Input$TransFileFilter.fromJson(j).toJson(),
      'TransInspectImpFileFilter': (j) =>
          Input$TransInspectImpFileFilter.fromJson(j).toJson(),
      'TransInspectRecordFilter': (j) =>
          Input$TransInspectRecordFilter.fromJson(j).toJson(),
      'TransInspectSchDetailFilter': (j) =>
          Input$TransInspectSchDetailFilter.fromJson(j).toJson(),
      'TransInspectSchFilter': (j) =>
          Input$TransInspectSchFilter.fromJson(j).toJson(),
    };

final _specs = <String, FlatFilterSpec>{
  'capability_page': CapabilityPageFilterSpec.spec,
  'capable_staff_page': CapableStaffPageFilterSpec.spec,
  'equipment_category_page': EquipmentCategoryPageFilterSpec.spec,
  'equipment_page': EquipmentPageFilterSpec.spec,
  'file_page': FilePageFilterSpec.spec,
  'inspect_imp_file_page': InspectImpFilePageFilterSpec.spec,
  'inspect_record_page': InspectRecordPageFilterSpec.spec,
  'inspect_sch_detail_page': InspectSchDetailPageFilterSpec.spec,
  'inspect_sch_page': InspectSchPageFilterSpec.spec,
  'inspection_equipent_page': InspectionEquipentPageFilterSpec.spec,
  'inspection_item_page': InspectionItemPageFilterSpec.spec,
  'inspection_kind_page': InspectionKindPageFilterSpec.spec,
  'inspection_operation_page': InspectionOperationPageFilterSpec.spec,
  'license_holders_page': LicenseHoldersPageFilterSpec.spec,
  'license_page': LicensePageFilterSpec.spec,
  'location_page': LocationPageFilterSpec.spec,
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
