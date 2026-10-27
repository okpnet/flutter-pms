// 全画面の検索条件の対応表(lib/src/contents/<画面>_filter_spec.dart)のすべてのキーが、
// 生成モデル(Input$<テーブル>Filter)のfromJson/toJsonで欠落なく往復できること。
// fromJsonは未知のキーを黙って捨てるため、toJsonとの一致で、画面用スキーマに経路が揃っていることを確認する。

import 'package:flutter_test/flutter_test.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

final _roundTrips =
    <String, Map<String, dynamic> Function(Map<String, dynamic>)>{
      'InfoAssignFilter': (j) => Input$InfoAssignFilter.fromJson(j).toJson(),
      'InfoCompanyFilter': (j) => Input$InfoCompanyFilter.fromJson(j).toJson(),
      'InfoDepartmentFilter': (j) =>
          Input$InfoDepartmentFilter.fromJson(j).toJson(),
      'InfoDepartmentKindValueFilter': (j) =>
          Input$InfoDepartmentKindValueFilter.fromJson(j).toJson(),
      'InfoOfficeFilter': (j) => Input$InfoOfficeFilter.fromJson(j).toJson(),
      'InfoProvisionFilter': (j) =>
          Input$InfoProvisionFilter.fromJson(j).toJson(),
      'InfoStaffFilter': (j) => Input$InfoStaffFilter.fromJson(j).toJson(),
      'MstrApprovalPatternFilter': (j) =>
          Input$MstrApprovalPatternFilter.fromJson(j).toJson(),
      'MstrApprovalScopePatternFilter': (j) =>
          Input$MstrApprovalScopePatternFilter.fromJson(j).toJson(),
    };

final _specs = <String, FlatFilterSpec>{
  'approval_operation_page': ApprovalOperationPageFilterSpec.spec,
  'approval_scope_page': ApprovalScopePageFilterSpec.spec,
  'assign_page': AssignPageFilterSpec.spec,
  'company_page': CompanyPageFilterSpec.spec,
  'department_category_page': DepartmentCategoryPageFilterSpec.spec,
  'department_page': DepartmentPageFilterSpec.spec,
  'office_page': OfficePageFilterSpec.spec,
  'provision_page': ProvisionPageFilterSpec.spec,
  'staff_capability_page': StaffCapabilityPageFilterSpec.spec,
  'staff_held_license_page': StaffHeldLicensePageFilterSpec.spec,
  'staff_page': StaffPageFilterSpec.spec,
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
