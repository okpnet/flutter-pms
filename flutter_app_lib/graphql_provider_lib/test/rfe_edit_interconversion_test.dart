// 要件0046: RFE(editのgenerateRfe: trueから自動導出した読み込み専用クエリ)と
// Edit(ミューテーション)のモデルが、nested_map_flattener.dartを通したMapで
// 相互変換できることを全画面について検証する。
//
// 検証項目・失敗/要確認の区分は test/support/rfe_edit_conversion.dart を参照。
// 結果は画面ごとに `RFE_EDIT_REPORT=<JSON>` として標準出力へ出す
// (docs/0046_rfe_edit_interconversion_log.md の元データ)。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/postgraphile/approval_operation_page/approval_operation_page_edit.graphql.dart' as approval_operation_page_edit;
import 'package:gqlprvlib/postgraphile/approval_operation_page/approval_operation_page_rfe.graphql.dart' as approval_operation_page_rfe;
import 'package:gqlprvlib/postgraphile/assign_page/assign_page_edit.graphql.dart' as assign_page_edit;
import 'package:gqlprvlib/postgraphile/assign_page/assign_page_rfe.graphql.dart' as assign_page_rfe;
import 'package:gqlprvlib/postgraphile/capability_page/capability_page_edit.graphql.dart' as capability_page_edit;
import 'package:gqlprvlib/postgraphile/capability_page/capability_page_rfe.graphql.dart' as capability_page_rfe;
import 'package:gqlprvlib/postgraphile/company_page/company_page_edit.graphql.dart' as company_page_edit;
import 'package:gqlprvlib/postgraphile/company_page/company_page_rfe.graphql.dart' as company_page_rfe;
import 'package:gqlprvlib/postgraphile/department_category/department_category_edit.graphql.dart' as department_category_edit;
import 'package:gqlprvlib/postgraphile/department_category/department_category_rfe.graphql.dart' as department_category_rfe;
import 'package:gqlprvlib/postgraphile/department_page/department_page_edit.graphql.dart' as department_page_edit;
import 'package:gqlprvlib/postgraphile/department_page/department_page_rfe.graphql.dart' as department_page_rfe;
import 'package:gqlprvlib/postgraphile/item_kind_page/item_kind_page_edit.graphql.dart' as item_kind_page_edit;
import 'package:gqlprvlib/postgraphile/item_kind_page/item_kind_page_rfe.graphql.dart' as item_kind_page_rfe;
import 'package:gqlprvlib/postgraphile/license_holders_page/license_holders_page_edit.graphql.dart' as license_holders_page_edit;
import 'package:gqlprvlib/postgraphile/license_holders_page/license_holders_page_rfe.graphql.dart' as license_holders_page_rfe;
import 'package:gqlprvlib/postgraphile/license_page/license_page_edit.graphql.dart' as license_page_edit;
import 'package:gqlprvlib/postgraphile/license_page/license_page_rfe.graphql.dart' as license_page_rfe;
import 'package:gqlprvlib/postgraphile/office_page/office_page_edit.graphql.dart' as office_page_edit;
import 'package:gqlprvlib/postgraphile/office_page/office_page_rfe.graphql.dart' as office_page_rfe;
import 'package:gqlprvlib/postgraphile/position_page/position_page_edit.graphql.dart' as position_page_edit;
import 'package:gqlprvlib/postgraphile/position_page/position_page_rfe.graphql.dart' as position_page_rfe;
import 'package:gqlprvlib/postgraphile/provision_page/provision_page_edit.graphql.dart' as provision_page_edit;
import 'package:gqlprvlib/postgraphile/provision_page/provision_page_rfe.graphql.dart' as provision_page_rfe;
import 'package:gqlprvlib/postgraphile/spec_measurement_page/spec_measurement_page_edit.graphql.dart' as spec_measurement_page_edit;
import 'package:gqlprvlib/postgraphile/spec_measurement_page/spec_measurement_page_rfe.graphql.dart' as spec_measurement_page_rfe;
import 'package:gqlprvlib/postgraphile/staff_capability/staff_capability_edit.graphql.dart' as staff_capability_edit;
import 'package:gqlprvlib/postgraphile/staff_capability/staff_capability_rfe.graphql.dart' as staff_capability_rfe;
import 'package:gqlprvlib/postgraphile/staff_held_license_page/staff_held_license_page_edit.graphql.dart' as staff_held_license_page_edit;
import 'package:gqlprvlib/postgraphile/staff_held_license_page/staff_held_license_page_rfe.graphql.dart' as staff_held_license_page_rfe;
import 'package:gqlprvlib/postgraphile/staff_page/staff_page_edit.graphql.dart' as staff_page_edit;
import 'package:gqlprvlib/postgraphile/staff_page/staff_page_rfe.graphql.dart' as staff_page_rfe;
import 'package:gqlprvlib/postgraphile/unit_page/unit_page_edit.graphql.dart' as unit_page_edit;
import 'package:gqlprvlib/postgraphile/unit_page/unit_page_rfe.graphql.dart' as unit_page_rfe;

import 'support/rfe_edit_conversion.dart';

final _pairs = <RfeEditPair>[
  RfeEditPair(
    page: 'approval_operation_page',
    rfeFromJson: (j) => approval_operation_page_rfe.Query$ApprovalOperationPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => approval_operation_page_edit.Mutation$ApprovalOperationPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        approval_operation_page_edit.Variables$Mutation$ApprovalOperationPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'assign_page',
    rfeFromJson: (j) => assign_page_rfe.Query$AssignPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => assign_page_edit.Mutation$AssignPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        assign_page_edit.Variables$Mutation$AssignPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'capability_page',
    rfeFromJson: (j) => capability_page_rfe.Query$CapabilityPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => capability_page_edit.Mutation$CapabilityPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        capability_page_edit.Variables$Mutation$CapabilityPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'company_page',
    rfeFromJson: (j) => company_page_rfe.Query$CompanyPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => company_page_edit.Mutation$CompanyPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        company_page_edit.Variables$Mutation$CompanyPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'department_category',
    rfeFromJson: (j) => department_category_rfe.Query$DepartmentCategoryRfe.fromJson(j).toJson(),
    editFromJson: (j) => department_category_edit.Mutation$DepartmentCategoryEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        department_category_edit.Variables$Mutation$DepartmentCategoryEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'department_page',
    rfeFromJson: (j) => department_page_rfe.Query$DepartmentPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => department_page_edit.Mutation$DepartmentPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        department_page_edit.Variables$Mutation$DepartmentPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'item_kind_page',
    rfeFromJson: (j) => item_kind_page_rfe.Query$ItemKindPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => item_kind_page_edit.Mutation$ItemKindPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        item_kind_page_edit.Variables$Mutation$ItemKindPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'license_holders_page',
    rfeFromJson: (j) => license_holders_page_rfe.Query$LicenseHoldersPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => license_holders_page_edit.Mutation$LicenseHoldersPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        license_holders_page_edit.Variables$Mutation$LicenseHoldersPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'license_page',
    rfeFromJson: (j) => license_page_rfe.Query$LicensePageRfe.fromJson(j).toJson(),
    editFromJson: (j) => license_page_edit.Mutation$LicensePageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        license_page_edit.Variables$Mutation$LicensePageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'office_page',
    rfeFromJson: (j) => office_page_rfe.Query$OfficePageRfe.fromJson(j).toJson(),
    editFromJson: (j) => office_page_edit.Mutation$OfficePageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        office_page_edit.Variables$Mutation$OfficePageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'position_page',
    rfeFromJson: (j) => position_page_rfe.Query$PositionPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => position_page_edit.Mutation$PositionPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        position_page_edit.Variables$Mutation$PositionPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'provision_page',
    rfeFromJson: (j) => provision_page_rfe.Query$ProvisionPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => provision_page_edit.Mutation$ProvisionPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        provision_page_edit.Variables$Mutation$ProvisionPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'spec_measurement_page',
    rfeFromJson: (j) => spec_measurement_page_rfe.Query$SpecMeasurementPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => spec_measurement_page_edit.Mutation$SpecMeasurementPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        spec_measurement_page_edit.Variables$Mutation$SpecMeasurementPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'staff_capability',
    rfeFromJson: (j) => staff_capability_rfe.Query$StaffCapabilityRfe.fromJson(j).toJson(),
    editFromJson: (j) => staff_capability_edit.Mutation$StaffCapabilityEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        staff_capability_edit.Variables$Mutation$StaffCapabilityEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'staff_held_license_page',
    rfeFromJson: (j) => staff_held_license_page_rfe.Query$StaffHeldLicensePageRfe.fromJson(j).toJson(),
    editFromJson: (j) => staff_held_license_page_edit.Mutation$StaffHeldLicensePageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        staff_held_license_page_edit.Variables$Mutation$StaffHeldLicensePageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'staff_page',
    rfeFromJson: (j) => staff_page_rfe.Query$StaffPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => staff_page_edit.Mutation$StaffPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        staff_page_edit.Variables$Mutation$StaffPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'unit_page',
    rfeFromJson: (j) => unit_page_rfe.Query$UnitPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => unit_page_edit.Mutation$UnitPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        unit_page_edit.Variables$Mutation$UnitPageEdit.fromJson(j).toJson(),
  ),
];

void main() {
  late SchemaIndex schema;

  setUpAll(() {
    schema = SchemaIndex.load('lib/graphql/schema.graphql');
  });

  for (final pair in _pairs) {
    test('要件0046: ${pair.page} RFE <-> Edit 相互変換', () {
      final report = RfeEditConversionAnalyzer(schema, pair).run();
      // ignore: avoid_print
      print('RFE_EDIT_REPORT=${jsonEncode(report.toJson())}');
      expect(
        report.failures.map((f) => '[${f.category}] ${f.path ?? ''} ${f.message}'),
        isEmpty,
        reason: '${pair.page}: RFEとEditのモデルが相互変換できない',
      );
    });
  }
}
