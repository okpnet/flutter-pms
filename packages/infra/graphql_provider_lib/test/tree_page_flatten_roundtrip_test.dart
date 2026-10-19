// 要件0054: ツリーの親の付け替え用ページ(location/task/department_tree_page)の
// Edit/RFEモデルのnested_map_flattener.dart往復変換と、親をnull(トップへ移動)にできることを検証する。
// item_tree_pageは、呼称・テキストの入れ子を持つため、rfe_edit_interconversion_test.dartで検証する。

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/location_tree_page/location_tree_page_edit.graphql.dart' as location_tree_page_edit;
import 'package:gqlprvlib/postgraphile/location_tree_page/location_tree_page_rfe.graphql.dart' as location_tree_page_rfe;
import 'package:gqlprvlib/postgraphile/task_tree_page/task_tree_page_edit.graphql.dart' as task_tree_page_edit;
import 'package:gqlprvlib/postgraphile/task_tree_page/task_tree_page_rfe.graphql.dart' as task_tree_page_rfe;
import 'package:gqlprvlib/postgraphile/department_tree_page/department_tree_page_edit.graphql.dart' as department_tree_page_edit;
import 'package:gqlprvlib/postgraphile/department_tree_page/department_tree_page_rfe.graphql.dart' as department_tree_page_rfe;

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
      final model = location_tree_page_edit.Mutation$LocationTreePageEdit.fromJson(raw);
      final entity = model.updateMstrLocationTreeByMstrLocationTreeId!.mstrLocationTree!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        location_tree_page_edit.Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree.fromJson(restoredMap),
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
      final model = location_tree_page_rfe.Query$LocationTreePageRfe.fromJson(raw);
      final entity = model.mstrLocationTreeByMstrLocationTreeId!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        location_tree_page_rfe.Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId.fromJson(restoredMap),
        equals(entity),
      );
    });

    test('親をnull(トップへ移動)にするには、fromJsonにnullのキーを渡す', () {
      final v = location_tree_page_edit.Variables$Mutation$LocationTreePageEdit.fromJson({
        'mstrLocationTreeId': 't1111111-1111-1111-1111-111111111111',
        'parentMstrLocationId': null,
      });
      expect(v.toJson().containsKey('parentMstrLocationId'), isTrue);
      expect(v.toJson()['parentMstrLocationId'], isNull);
      // コンストラクタでnullを渡すと(または省略すると)、キーが省略される(親を変更しない)。
      final omitted = location_tree_page_edit.Variables$Mutation$LocationTreePageEdit(
        mstrLocationTreeId: 't1111111-1111-1111-1111-111111111111',
      );
      expect(omitted.toJson().containsKey('parentMstrLocationId'), isFalse);
    });
  });

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
      final model = task_tree_page_edit.Mutation$TaskTreePageEdit.fromJson(raw);
      final entity = model.updateMstrTaskTreeByMstrTaskTreeId!.mstrTaskTree!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        task_tree_page_edit.Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree.fromJson(restoredMap),
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
      final model = task_tree_page_rfe.Query$TaskTreePageRfe.fromJson(raw);
      final entity = model.mstrTaskTreeByMstrTaskTreeId!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        task_tree_page_rfe.Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId.fromJson(restoredMap),
        equals(entity),
      );
    });

    test('親をnull(トップへ移動)にするには、fromJsonにnullのキーを渡す', () {
      final v = task_tree_page_edit.Variables$Mutation$TaskTreePageEdit.fromJson({
        'mstrTaskTreeId': 't1111111-1111-1111-1111-111111111111',
        'parentMstrTaskId': null,
      });
      expect(v.toJson().containsKey('parentMstrTaskId'), isTrue);
      expect(v.toJson()['parentMstrTaskId'], isNull);
      // コンストラクタでnullを渡すと(または省略すると)、キーが省略される(親を変更しない)。
      final omitted = task_tree_page_edit.Variables$Mutation$TaskTreePageEdit(
        mstrTaskTreeId: 't1111111-1111-1111-1111-111111111111',
      );
      expect(omitted.toJson().containsKey('parentMstrTaskId'), isFalse);
    });
  });

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
      final model = department_tree_page_edit.Mutation$DepartmentTreePageEdit.fromJson(raw);
      final entity = model.updateInfoDepartmentTreeByInfoDepartmentTreeId!.infoDepartmentTree!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        department_tree_page_edit.Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree.fromJson(restoredMap),
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
      final model = department_tree_page_rfe.Query$DepartmentTreePageRfe.fromJson(raw);
      final entity = model.infoDepartmentTreeByInfoDepartmentTreeId!;
      final entityMap = entity.toJson();
      final restoredMap = entityMap.flatten().unflatten();
      expect(restoredMap, equals(entityMap));
      expect(
        department_tree_page_rfe.Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId.fromJson(restoredMap),
        equals(entity),
      );
    });

    test('親をnull(トップへ移動)にするには、fromJsonにnullのキーを渡す', () {
      final v = department_tree_page_edit.Variables$Mutation$DepartmentTreePageEdit.fromJson({
        'infoDepartmentTreeId': 't1111111-1111-1111-1111-111111111111',
        'parentInfoDepartmentId': null,
      });
      expect(v.toJson().containsKey('parentInfoDepartmentId'), isTrue);
      expect(v.toJson()['parentInfoDepartmentId'], isNull);
      // コンストラクタでnullを渡すと(または省略すると)、キーが省略される(親を変更しない)。
      final omitted = department_tree_page_edit.Variables$Mutation$DepartmentTreePageEdit(
        infoDepartmentTreeId: 't1111111-1111-1111-1111-111111111111',
      );
      expect(omitted.toJson().containsKey('parentInfoDepartmentId'), isFalse);
    });
  });

}
