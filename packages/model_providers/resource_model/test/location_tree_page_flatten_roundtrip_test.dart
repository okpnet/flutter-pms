// 要件0054: ツリーの親の付け替え用ページ(location_tree_page)のEdit/RFEモデルの往復変換と、親をnull(トップへ移動)にできることを検証する。

import 'package:flutter_test/flutter_test.dart';
import 'package:resource_model/resource_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

void main() {
  group('location_tree_page', () {
    test('Mutation LocationTreePageEdit <-> Map 往復変換が元と一致する', () {
      final raw = {
        'updateMstrLocationTreeByMstrLocationTreeId': {
          'mstrLocationTree': {
            'mstrLocationTreeId': 't1111111-1111-1111-1111-111111111111',
            'parentMstrLocationId': 'p1111111-1111-1111-1111-111111111111',
            'remarks': '備考テキスト',
            '__typename': 'MstrLocationTree',
          },
          '__typename': 'UpdateMstrLocationTreePayload',
        },
        '__typename': 'Mutation',
      };
      final model = Mutation$LocationTreePageEdit.fromJson(raw);
      final entity =
          model.updateMstrLocationTreeByMstrLocationTreeId!.mstrLocationTree!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree.fromJson(
          restoredMap,
        ),
        equals(entity),
      );
    });

    test('Query LocationTreePageRfe <-> Map 往復変換が元と一致する', () {
      final raw = {
        'mstrLocationTreeByMstrLocationTreeId': {
          'mstrLocationTreeId': 't1111111-1111-1111-1111-111111111111',
          'parentMstrLocationId': null,
          'remarks': null,
          'updateUserId': 'u1111111-1111-1111-1111-111111111111',
          'updateUserHistoryId': 'h1111111-1111-1111-1111-111111111111',
          'remove': false,
          'updateAt': '2026-10-16T00:00:00',
          '__typename': 'MstrLocationTree',
        },
        '__typename': 'Query',
      };
      final model = Query$LocationTreePageRfe.fromJson(raw);
      final entity = model.mstrLocationTreeByMstrLocationTreeId!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId.fromJson(
          restoredMap,
        ),
        equals(entity),
      );
    });

    test('親をnull(トップへ移動)にするには、fromJsonにnullのキーを渡す', () {
      final v = Variables$Mutation$LocationTreePageEdit.fromJson({
        'mstrLocationTreeId': 't1111111-1111-1111-1111-111111111111',
        'parentMstrLocationId': null,
      });
      expect(v.toJson().containsKey('parentMstrLocationId'), isTrue);
      expect(v.toJson()['parentMstrLocationId'], isNull);
      // コンストラクタでnullを渡すと(または省略すると)、キーが省略される(親を変更しない)。
      final omitted = Variables$Mutation$LocationTreePageEdit(
        mstrLocationTreeId: 't1111111-1111-1111-1111-111111111111',
      );
      expect(omitted.toJson().containsKey('parentMstrLocationId'), isFalse);
    });
  });
}
