// 要件0018・0025: shipping_kind画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。結果は docs/0025_view_graphql_evaluation_log.md
// (追記)またはdocs/0027以降のログに記録する。
//
// 要件0026(2026/09/20実施分、docs/0026_schema_fetch_log.md追記9・
// docs/0033_shared_dictionary_language_redesign_log.md参照): SharedDictionary.ja/enが
// SharedDictionaryValue(SharedLanguageCode経由、1言語1行)へ置き換わったことに伴う
// GraphQL/KeyNameの改修(shipping_kindを試作画面として先行対応)を反映した。
// "ja"/"en"はRelay Connection形状(nodes)になるため、flattenForColumnsでは
// collapseSingleRecordPathsで先頭1件展開する(一意制約により常に0〜1件)。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/shipping_kind_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/shipping_kind/shipping_kind_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/shipping_kind/shipping_kind_read.graphql.dart';

/// [ja]/[en]をSharedDictionaryValueのConnection形状(nodes)にラップする。
/// 値が無い言語は空配列(0件)にする(旧`null`相当)。
Map<String, dynamic> _dictionaryValueConnection(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'dictionaryValue': value, '__typename': 'SharedDictionaryValue'},
        ],
  '__typename': 'SharedDictionaryValuesConnection',
};

Map<String, dynamic> _sharedAppellationJson() => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': _dictionaryValueConnection('陸送'),
    'en': _dictionaryValueConnection('Land transport'),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': _dictionaryValueConnection('リクソウ'),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': _dictionaryValueConnection('陸送'),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrShippingKinds': {
    'totalCount': 1,
    'pageInfo': {
      'hasNextPage': false,
      'endCursor': null,
      '__typename': 'PageInfo',
    },
    'nodes': [
      {
        'mstrShippingKindId': 'sk111111-1111-1111-1111-111111111111',
        'code': 'SK001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-12T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrShippingKind',
      },
    ],
    '__typename': 'MstrShippingKindsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrShippingKindByMstrShippingKindId': {
    'mstrShippingKind': {
      'mstrShippingKindId': 'sk111111-1111-1111-1111-111111111111',
      'code': 'SK001',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _sharedAppellationJson(),
      '__typename': 'MstrShippingKind',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrShippingKindPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$ShippingKindRead <-> Map 往復変換が元と一致する', () {
    final model = Query$ShippingKindRead.fromJson(_buildRawReadJson());
    final node = model.allMstrShippingKinds!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$ShippingKindRead$allMstrShippingKinds$nodes.fromJson(restoredMap);

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('SHIPPING_KIND_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test(
    '要件0026: SharedDictionaryValue化後もShippingKindKeyName + collapseSingleRecordPathsでja/enを解決できる',
    () {
      final model = Query$ShippingKindRead.fromJson(_buildRawReadJson());
      final node = model.allMstrShippingKinds!.nodes.single!;
      final nodeMap = node.toJson();

      const nameJa = ShippingKindKeyName
          .sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja_dictionaryValue;
      const nameEn = ShippingKindKeyName
          .sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en_dictionaryValue;
      const pronunciationEn = ShippingKindKeyName
          .sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en_dictionaryValue;

      // collapseSingleRecordPathsには「ja」「en」エイリアスの位置(Connectionの手前)までの
      // パスを渡す。一意制約により0〜1件のため、先頭1件を単一レコードとして展開できる。
      const collapsePaths = {
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
      };

      final flatColumns = nodeMap.flattenForColumns([
        nameJa.name,
        nameEn.name,
        pronunciationEn.name,
      ], collapseSingleRecordPaths: collapsePaths);

      expect(flatColumns[nameJa.name], '陸送');
      expect(flatColumns[nameEn.name], 'Land transport');
      // 英語の読みは値が無い(0件)ため、先頭レコードが存在せずnullになる。
      expect(flatColumns[pronunciationEn.name], isNull);
    },
  );

  test('要件0025: Mutation\$ShippingKindEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$ShippingKindEdit.fromJson(_buildRawEditJson());
    final mstrShippingKind =
        model.updateMstrShippingKindByMstrShippingKindId!.mstrShippingKind!;

    final kindMap = mstrShippingKind.toJson();
    final flatMap = kindMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$ShippingKindEdit$updateMstrShippingKindByMstrShippingKindId$mstrShippingKind.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(kindMap));
    expect(restoredModel, equals(mstrShippingKind));

    // ignore: avoid_print
    print('SHIPPING_KIND_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
