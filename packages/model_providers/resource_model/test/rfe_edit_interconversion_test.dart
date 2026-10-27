// RFE(editのgenerateRfe: trueから自動導出した読み込み専用クエリ)とEdit(ミューテーション)のモデルが、
// flat_map を通したMapで相互変換できることを、このパッケージの全画面について検証する。
//
// 検証項目・失敗/要確認の区分は pms_graphql の testing.dart(rfe_edit_conversion)を参照。
// 結果は画面ごとに `RFE_EDIT_REPORT=<JSON>` として標準出力へ出す。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:resource_model/resource_model.dart';
import 'package:pms_graphql/testing.dart';

final _pairs = <RfeEditPair>[
  RfeEditPair(
    page: 'capability_page',
    rfeFromJson: (j) => Query$CapabilityPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$CapabilityPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$CapabilityPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'capable_staff_page',
    rfeFromJson: (j) => Query$CapableStaffPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$CapableStaffPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$CapableStaffPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'license_holders_page',
    rfeFromJson: (j) => Query$LicenseHoldersPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$LicenseHoldersPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$LicenseHoldersPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'license_page',
    rfeFromJson: (j) => Query$LicensePageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$LicensePageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$LicensePageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'location_tree_page',
    rfeFromJson: (j) => Query$LocationTreePageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$LocationTreePageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$LocationTreePageEdit.fromJson(j).toJson(),
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
