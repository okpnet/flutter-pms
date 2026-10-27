// 要件0054: ツリーの親の付け替え用ページ(department_tree_page)のEdit/RFEモデルの往復変換と、親をnull(トップへ移動)にできることを検証する。

import 'package:flutter_test/flutter_test.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

void main() {
  group('department_tree_page', () {
    test('Mutation DepartmentTreePageEdit <-> Map 往復変換が元と一致する', () {
      final raw = {
        'updateInfoDepartmentTreeByInfoDepartmentTreeId': {
          'infoDepartmentTree': {
            'infoDepartmentTreeId': 't1111111-1111-1111-1111-111111111111',
            'parentInfoDepartmentId': 'p1111111-1111-1111-1111-111111111111',
            'remarks': '備考テキスト',
            '__typename': 'InfoDepartmentTree',
          },
          '__typename': 'UpdateInfoDepartmentTreePayload',
        },
        '__typename': 'Mutation',
      };
      final model = Mutation$DepartmentTreePageEdit.fromJson(raw);
      final entity = model
          .updateInfoDepartmentTreeByInfoDepartmentTreeId!
          .infoDepartmentTree!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree.fromJson(
          restoredMap,
        ),
        equals(entity),
      );
    });

    test('Query DepartmentTreePageRfe <-> Map 往復変換が元と一致する', () {
      final raw = {
        'infoDepartmentTreeByInfoDepartmentTreeId': {
          'infoDepartmentTreeId': 't1111111-1111-1111-1111-111111111111',
          'parentInfoDepartmentId': null,
          'remarks': null,
          'updateUserId': 'u1111111-1111-1111-1111-111111111111',
          'updateUserHistoryId': 'h1111111-1111-1111-1111-111111111111',
          'remove': false,
          'updateAt': '2026-10-16T00:00:00',
          '__typename': 'InfoDepartmentTree',
        },
        '__typename': 'Query',
      };
      final model = Query$DepartmentTreePageRfe.fromJson(raw);
      final entity = model.infoDepartmentTreeByInfoDepartmentTreeId!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId.fromJson(
          restoredMap,
        ),
        equals(entity),
      );
    });

    test('親をnull(トップへ移動)にするには、fromJsonにnullのキーを渡す', () {
      final v = Variables$Mutation$DepartmentTreePageEdit.fromJson({
        'infoDepartmentTreeId': 't1111111-1111-1111-1111-111111111111',
        'parentInfoDepartmentId': null,
      });
      expect(v.toJson().containsKey('parentInfoDepartmentId'), isTrue);
      expect(v.toJson()['parentInfoDepartmentId'], isNull);
      // コンストラクタでnullを渡すと(または省略すると)、キーが省略される(親を変更しない)。
      final omitted = Variables$Mutation$DepartmentTreePageEdit(
        infoDepartmentTreeId: 't1111111-1111-1111-1111-111111111111',
      );
      expect(omitted.toJson().containsKey('parentInfoDepartmentId'), isFalse);
    });
  });
}
