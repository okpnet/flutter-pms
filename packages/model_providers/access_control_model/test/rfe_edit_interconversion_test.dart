// RFE(editのgenerateRfe: trueから自動導出した読み込み専用クエリ)とEdit(ミューテーション)のモデルが、
// flat_map を通したMapで相互変換できることを、このパッケージの全画面について検証する。
//
// 検証項目・失敗/要確認の区分は pms_graphql の testing.dart(rfe_edit_conversion)を参照。
// 結果は画面ごとに `RFE_EDIT_REPORT=<JSON>` として標準出力へ出す。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:access_control_model/access_control_model.dart';
import 'package:pms_graphql/testing.dart';

final _pairs = <RfeEditPair>[
  RfeEditPair(
    page: 'access_path_page',
    rfeFromJson: (j) => Query$AccessPathPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$AccessPathPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$AccessPathPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'department_access_path_page',
    rfeFromJson: (j) => Query$DepartmentAccessPathPageRfe.fromJson(j).toJson(),
    editFromJson: (j) =>
        Mutation$DepartmentAccessPathPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$DepartmentAccessPathPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'staff_access_permission_page',
    rfeFromJson: (j) => Query$StaffAccessPermissionPageRfe.fromJson(j).toJson(),
    editFromJson: (j) =>
        Mutation$StaffAccessPermissionPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$StaffAccessPermissionPageEdit.fromJson(j).toJson(),
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
