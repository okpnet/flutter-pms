// RFE(editのgenerateRfe: trueから自動導出した読み込み専用クエリ)とEdit(ミューテーション)のモデルが、
// flat_map を通したMapで相互変換できることを、このパッケージの全画面について検証する。
//
// 検証項目・失敗/要確認の区分は pms_graphql の testing.dart(rfe_edit_conversion)を参照。
// 結果は画面ごとに `RFE_EDIT_REPORT=<JSON>` として標準出力へ出す。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/testing.dart';

final _pairs = <RfeEditPair>[
  RfeEditPair(
    page: 'approval_operation_page',
    rfeFromJson: (j) => Query$ApprovalOperationPageRfe.fromJson(j).toJson(),
    editFromJson: (j) =>
        Mutation$ApprovalOperationPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$ApprovalOperationPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'assign_page',
    rfeFromJson: (j) => Query$AssignPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$AssignPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$AssignPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'company_page',
    rfeFromJson: (j) => Query$CompanyPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$CompanyPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$CompanyPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'department_category_page',
    rfeFromJson: (j) => Query$DepartmentCategoryPageRfe.fromJson(j).toJson(),
    editFromJson: (j) =>
        Mutation$DepartmentCategoryPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$DepartmentCategoryPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'department_page',
    rfeFromJson: (j) => Query$DepartmentPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$DepartmentPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$DepartmentPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'office_page',
    rfeFromJson: (j) => Query$OfficePageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$OfficePageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$OfficePageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'position_page',
    rfeFromJson: (j) => Query$PositionPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$PositionPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$PositionPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'provision_page',
    rfeFromJson: (j) => Query$ProvisionPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$ProvisionPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$ProvisionPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'staff_capability_page',
    rfeFromJson: (j) => Query$StaffCapabilityPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$StaffCapabilityPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$StaffCapabilityPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'staff_held_license_page',
    rfeFromJson: (j) => Query$StaffHeldLicensePageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$StaffHeldLicensePageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$StaffHeldLicensePageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'staff_page',
    rfeFromJson: (j) => Query$StaffPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$StaffPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$StaffPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'department_tree_page',
    rfeFromJson: (j) => Query$DepartmentTreePageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$DepartmentTreePageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$DepartmentTreePageEdit.fromJson(j).toJson(),
  ),
];

void main() {
  late SchemaIndex schema;

  setUpAll(() {
    schema = SchemaIndex.load('lib/src/graphql/schema.graphql');
  });

  for (final pair in _pairs) {
    test('${pair.page} RFE <-> Edit 相互変換', () {
      final report = RfeEditConversionAnalyzer(schema, pair).run();
      // ignore: avoid_print
      print('RFE_EDIT_REPORT=${jsonEncode(report.toJson())}');
      expect(
        report.failures.map(
          (f) => '[${f.category}] ${f.path ?? ''} ${f.message}',
        ),
        isEmpty,
        reason: '${pair.page}: RFEとEditのモデルが相互変換できない',
      );
    });
  }
}
