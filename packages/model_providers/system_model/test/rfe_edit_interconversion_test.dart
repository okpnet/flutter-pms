// RFE(editのgenerateRfe: trueから自動導出した読み込み専用クエリ)とEdit(ミューテーション)のモデルが、
// flat_map を通したMapで相互変換できることを、このパッケージの全画面について検証する。
//
// 検証項目・失敗/要確認の区分は pms_graphql の testing.dart(rfe_edit_conversion)を参照。
// 結果は画面ごとに `RFE_EDIT_REPORT=<JSON>` として標準出力へ出す。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:system_model/system_model.dart';
import 'package:pms_graphql/testing.dart';

final _pairs = <RfeEditPair>[
  RfeEditPair(
    page: 'unit_page',
    rfeFromJson: (j) => Query$UnitPageRfe.fromJson(j).toJson(),
    editFromJson: (j) => Mutation$UnitPageEdit.fromJson(j).toJson(),
    editVariablesFromJson: (j) =>
        Variables$Mutation$UnitPageEdit.fromJson(j).toJson(),
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
