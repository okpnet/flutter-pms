// RFE(editのgenerateRfe: trueから自動導出した読み込み専用クエリ)とEdit(ミューテーション)のモデルが、
// flat_map を通したMapで相互変換できることを、このパッケージの全画面について検証する。
//
// 検証項目・失敗/要確認の区分は pms_graphql の testing.dart(rfe_edit_conversion)を参照。
// 結果は画面ごとに `RFE_EDIT_REPORT=<JSON>` として標準出力へ出す。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:item_model/item_model.dart';
import 'package:pms_graphql/testing.dart';

final _pairs = <RfeEditPair>[
  RfeEditPair(
    page: 'item_kind_page',
    rfeFromJson: (j) => Query$ItemKindPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$ItemKindPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$ItemKindPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'operation_page',
    rfeFromJson: (j) => Query$OperationPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$OperationPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$OperationPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'spec_measurement_page',
    rfeFromJson: (j) => Query$SpecMeasurementPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$SpecMeasurementPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$SpecMeasurementPageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'item_tree_page',
    rfeFromJson: (j) => Query$ItemTreePageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$ItemTreePageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$ItemTreePageEdit.fromJson(j).toJson(),
  ),
  RfeEditPair(
    page: 'task_tree_page',
    rfeFromJson: (j) => Query$TaskTreePageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$TaskTreePageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$TaskTreePageEdit.fromJson(j).toJson(),
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
