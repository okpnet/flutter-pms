// 要件0054: ツリーの親の付け替え用ページ(task_tree_page)のEdit/RFEモデルの往復変換と、親をnull(トップへ移動)にできることを検証する。

import 'package:flutter_test/flutter_test.dart';
import 'package:item_model/item_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

void main() {
  group('task_tree_page', () {
    test('Mutation TaskTreePageEdit <-> Map 往復変換が元と一致する', () {
      final raw = {
        'updateMstrTaskTreeByMstrTaskTreeId': {
          'mstrTaskTree': {
            'mstrTaskTreeId': 't1111111-1111-1111-1111-111111111111',
            'parentMstrTaskId': 'p1111111-1111-1111-1111-111111111111',
            'remarks': '備考テキスト',
            '__typename': 'MstrTaskTree',
          },
          '__typename': 'UpdateMstrTaskTreePayload',
        },
        '__typename': 'Mutation',
      };
      final model = Mutation$TaskTreePageEdit.fromJson(raw);
      final entity = model.updateMstrTaskTreeByMstrTaskTreeId!.mstrTaskTree!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree.fromJson(
          restoredMap,
        ),
        equals(entity),
      );
    });

    test('Query TaskTreePageRfe <-> Map 往復変換が元と一致する', () {
      final raw = {
        'mstrTaskTreeByMstrTaskTreeId': {
          'mstrTaskTreeId': 't1111111-1111-1111-1111-111111111111',
          'parentMstrTaskId': null,
          'remarks': null,
          'updateUserId': 'u1111111-1111-1111-1111-111111111111',
          'updateUserHistoryId': 'h1111111-1111-1111-1111-111111111111',
          'remove': false,
          'updateAt': '2026-10-16T00:00:00',
          '__typename': 'MstrTaskTree',
        },
        '__typename': 'Query',
      };
      final model = Query$TaskTreePageRfe.fromJson(raw);
      final entity = model.mstrTaskTreeByMstrTaskTreeId!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId.fromJson(
          restoredMap,
        ),
        equals(entity),
      );
    });

    test('親をnull(トップへ移動)にするには、fromJsonにnullのキーを渡す', () {
      final v = Variables$Mutation$TaskTreePageEdit.fromJson({
        'mstrTaskTreeId': 't1111111-1111-1111-1111-111111111111',
        'parentMstrTaskId': null,
      });
      expect(v.toJson().containsKey('parentMstrTaskId'), isTrue);
      expect(v.toJson()['parentMstrTaskId'], isNull);
      // コンストラクタでnullを渡すと(または省略すると)、キーが省略される(親を変更しない)。
      final omitted = Variables$Mutation$TaskTreePageEdit(
        mstrTaskTreeId: 't1111111-1111-1111-1111-111111111111',
      );
      expect(omitted.toJson().containsKey('parentMstrTaskId'), isFalse);
    });
  });
}
