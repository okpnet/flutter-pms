// nested_map_flattener.dart(汎用ユーティリティ)のテスト。
//
// `ConnectionRecordsX.extractFromEachRecord`は、PostGraphileのtoMany関係
// (Relay Connection、`nodes`/`edges`を持つ)を「1対多をJSON配列文字列として
// Mapの1セルにまとめたい」場合に使う想定で追加した(source/view.yamlの
// DepartmentPage.kinds[].valueのように、深くネストしたtoManyの各レコードから
// labels(shared_appellations経由の表示名)だけを取り出してJSON配列にする、
// という要望への対応)。
//
// PostGraphileの標準スキーマではtoMany関係は常にConnection型になり、GraphQL
// スキーマ自体をJSON配列(スカラー)に変えることはできない(バックエンド側に
// computed columnを追加しない限り)。そのため、通常どおりConnectionとして取得した
// うえで、このメソッドで各レコードから必要な値だけを取り出し、呼び出し側で
// `jsonEncode(...)`して1つの値にする、という2段階の方式を採る。
//
// ⚠ 暫定実装(2026-09-26追加)。この方式で進めるか、バックエンド側の
// computed column方式に切り替えるか未確定のため、方針変更時は
// lib/extensions/nested_map_flattener.dartのConnectionRecordsXとあわせて
// このテストファイルごと差し戻される可能性がある。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';

Map<String, dynamic> _connection(List<Map<String, dynamic>> nodes) => {
  'nodes': nodes,
  '__typename': 'ExampleConnection',
};

/// shared_appellations経由の表示名解決の形(要件0036以降、言語は`value`という
/// 単一フィールドで1件だけ取得する設計)を模したJSON。
Map<String, dynamic> _labelsJson(String? dictionaryValue) => {
  'sharedDictionaryBySharedDictionaryNameId': {
    'value': _connection(
      dictionaryValue == null
          ? []
          : [
              {
                'dictionaryValue': dictionaryValue,
                '__typename': 'SharedDictionaryValue',
              },
            ],
    ),
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

void main() {
  group('extractFromEachRecord', () {
    test('Connection形状でなければ空リストを返す', () {
      final notConnection = {'foo': 'bar'};
      expect(notConnection.extractFromEachRecord('foo'), isEmpty);
    });

    test('各レコードのプレーンな列をリストとして取り出せる', () {
      final connection = _connection([
        {'infoDepartmentKindValueId': 'v1', 'symbol': 'A'},
        {'infoDepartmentKindValueId': 'v2', 'symbol': 'B'},
      ]);

      expect(
        connection.extractFromEachRecord('infoDepartmentKindValueId'),
        ['v1', 'v2'],
      );
    });

    test(
      '要件: DepartmentPage.kinds[].valueのようにネストしたtoManyの各レコードから'
      'labels(shared_appellations経由の表示名)だけを取り出し、'
      'jsonEncodeでJSON配列文字列にできる',
      () {
        final valueConnection = _connection([
          {
            'infoDepartmentKindValueId': 'v1',
            'labels': _labelsJson('区分A'),
            '__typename': 'InfoDepartmentKindValue',
          },
          {
            'infoDepartmentKindValueId': 'v2',
            'labels': _labelsJson('区分B'),
            '__typename': 'InfoDepartmentKindValue',
          },
          {
            // 翻訳が無いレコードはnullになる想定
            'infoDepartmentKindValueId': 'v3',
            'labels': _labelsJson(null),
            '__typename': 'InfoDepartmentKindValue',
          },
        ]);

        final labelTexts = valueConnection.extractFromEachRecord(
          'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
          collapseSingleRecordPaths: {
            'labels||sharedDictionaryBySharedDictionaryNameId||value',
          },
        );

        expect(labelTexts, ['区分A', '区分B', null]);
        expect(jsonEncode(labelTexts), '["区分A","区分B",null]');
      },
    );

    test('collapseSingleRecordPathsを指定しない場合、Connectionのまま(未解決)で止まる', () {
      final valueConnection = _connection([
        {'labels': _labelsJson('区分A')},
      ]);

      final result = valueConnection.extractFromEachRecord(
        'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
      );

      // collapseSingleRecordPathsが無いと、valueがConnection形状のまま
      // dictionaryValueへ到達できずnullになる。
      expect(result, [null]);
    });
  });
}
