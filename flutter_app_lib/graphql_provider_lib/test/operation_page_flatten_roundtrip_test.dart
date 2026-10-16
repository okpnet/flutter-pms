// operation_page画面(source/view.yaml #OperationPage/#OperationPageEdit)の
// GraphQLからbuild_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。
// 共有テキスト(detailTexts)と、1対多(operationTasks)の入れ子を含む。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/operation_page/operation_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/operation_page/operation_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/operation_page/operation_page_rfe.graphql.dart';

Map<String, dynamic> _valueConnection(String field, String? value, String type) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {field: value, '__typename': type},
        ],
  '__typename': '${type}sConnection',
};

Map<String, dynamic> _dict(String? value) =>
    _valueConnection('dictionaryValue', value, 'SharedDictionaryValue');

Map<String, dynamic> _text(String? value) =>
    _valueConnection('textValue', value, 'SharedTextValue');

// 読み込み(FixTextReadFields)は、先頭の抜粋(lead_text)と文字数(char_count)を取得する。
Map<String, dynamic> _textRead(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'charCount': value.length, 'leadText': value, '__typename': 'SharedTextValue'},
        ],
  '__typename': 'SharedTextValuesConnection',
};

Map<String, dynamic> _dictionary(String id, Map<String, dynamic> values) => {
  'sharedDictionaryId': id,
  ...values,
  '__typename': 'SharedDictionary',
};

Map<String, dynamic> _labelsValue(String appellationsId, String nameJa) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': _dictionary(
    'd1111111-1111-1111-1111-111111111111',
    {'value': _dict(nameJa)},
  ),
  'sharedDictionaryBySharedDictionaryPronunciationId': _dictionary(
    'd2222222-2222-2222-2222-222222222222',
    {'value': _dict(null)},
  ),
  'sharedDictionaryBySharedDictionaryNicknameId': _dictionary(
    'd3333333-3333-3333-3333-333333333333',
    {'value': _dict(null)},
  ),
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _labelsJaEn(String appellationsId, String nameJa, String nameEn) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': _dictionary(
    'd1111111-1111-1111-1111-111111111111',
    {'ja': _dict(nameJa), 'en': _dict(nameEn)},
  ),
  'sharedDictionaryBySharedDictionaryPronunciationId': _dictionary(
    'd2222222-2222-2222-2222-222222222222',
    {'ja': _dict(null), 'en': _dict(null)},
  ),
  'sharedDictionaryBySharedDictionaryNicknameId': _dictionary(
    'd3333333-3333-3333-3333-333333333333',
    {'ja': _dict(null), 'en': _dict(null)},
  ),
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _textValue(String textId, String ja) => {
  'sharedTextId': textId,
  'value': _textRead(ja),
  '__typename': 'SharedText',
};

Map<String, dynamic> _textJaEn(String textId, String ja, String en) => {
  'sharedTextId': textId,
  'ja': _text(ja),
  'en': _text(en),
  '__typename': 'SharedText',
};

Map<String, dynamic> _updateUser(Map<String, dynamic> name) => {
  'historyId': 'h1111111-1111-1111-1111-111111111111',
  'infoStaffId': 's1111111-1111-1111-1111-111111111111',
  'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
  'code': 'U001',
  'sex': null,
  'phone': null,
  'symbol': null,
  'privatePhone': null,
  'name': name,
  '__typename': 'HistoryInfoStaff',
};

Map<String, dynamic> _updateUserJaEn() =>
    _updateUser(_labelsJaEn('a9999999-9999-9999-9999-999999999999', '管理者 花子', 'Hanako'));

// operationTasks.nodes[].tasks(TaskReadFields、editable: false。ja/en両方)
Map<String, dynamic> _task() => {
  'mstrTaskId': 't1111111-1111-1111-1111-111111111111',
  'groups': {
    'mstrTaskGroupId': 'g1111111-1111-1111-1111-111111111111',
    'code': 'G001',
    'labels': _labelsJaEn('a2222222-2222-2222-2222-222222222222', '組立', 'Assembly'),
    'details': 'x1111111-1111-1111-1111-111111111111',
    'symbol': 'G1',
    'remarks': null,
    'updateAt': '2026-10-01T00:00:00',
    'remove': false,
    'update_user': _updateUserJaEn(),
    '__typename': 'MstrTaskGroup',
  },
  'code': 'T001',
  'labels': _labelsJaEn('a3333333-3333-3333-3333-333333333333', '締付', 'Tighten'),
  'detailTexts': _textJaEn('x2222222-2222-2222-2222-222222222222', '締付工程', 'Tightening'),
  'class': 1,
  'defaultTime': {
    'years': 0,
    'months': 0,
    'days': 0,
    'hours': 0,
    'minutes': 10,
    'seconds': 0.0,
    '__typename': 'Interval',
  },
  'symbol': 'T1',
  'remarks': '工程の備考',
  'updateAt': '2026-10-01T00:00:00',
  'remove': false,
  'update_user': _updateUserJaEn(),
  '__typename': 'MstrTask',
};

Map<String, dynamic> _operationTasks() => {
  'totalCount': 2,
  'pageInfo': {
    'hasNextPage': false,
    'endCursor': null,
    '__typename': 'PageInfo',
  },
  'nodes': [
    for (final n in [1, 2])
      {
        'mstrOperationTaskId': 'k$n' 'ffffff-1111-1111-1111-111111111111',
        'mstrOperationId': 'o1111111-1111-1111-1111-111111111111',
        'mstrTaskId': 't1111111-1111-1111-1111-111111111111',
        'tasks': _task(),
        'sequence': n,
        'controlCode': 'OT00$n',
        'labels': _labelsJaEn('a4444444-4444-4444-4444-44444444444$n', '作業$n', 'Work $n'),
        'detailTexts': _textJaEn('x333333$n-3333-3333-3333-333333333333', '詳細$n', 'Detail $n'),
        'remarks': '明細$nの備考',
        '__typename': 'MstrOperationTask',
      },
  ],
  '__typename': 'MstrOperationTasksConnection',
};

void main() {
  test('Query\$OperationPageRead <-> Map 往復変換が元と一致する', () {
    final raw = {
      'allMstrOperations': {
        'totalCount': 1,
        'pageInfo': {
          'hasNextPage': false,
          'endCursor': null,
          '__typename': 'PageInfo',
        },
        'nodes': [
          {
            'mstrOperationId': 'o1111111-1111-1111-1111-111111111111',
            'controlCode': 'OP001',
            'symbol': 'OP1',
            'remarks': '備考テキスト',
            'updateAt': '2026-10-14T00:00:00',
            'remove': false,
            'labels': _labelsValue('a1111111-1111-1111-1111-111111111111', '組立運用'),
            'detailTexts': _textValue('x1111111-1111-1111-1111-111111111111', '運用の詳細'),
            'update_user': _updateUser(
              _labelsValue('a9999999-9999-9999-9999-999999999999', '管理者 花子'),
            ),
            '__typename': 'MstrOperation',
          },
        ],
        '__typename': 'MstrOperationsConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$OperationPageRead.fromJson(raw);
    final node = model.allMstrOperations!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$OperationPageRead$allMstrOperations$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final detail = nodeMap.flattenForColumns(
      ['detailTexts||value||leadText'],
      collapseSingleRecordPaths: {'detailTexts||value'},
    );
    expect(detail['detailTexts||value||leadText'], '運用の詳細');

    // ignore: avoid_print
    print('OPERATION_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('Mutation\$OperationPageEdit <-> Map 往復変換が元と一致する', () {
    final raw = {
      'updateMstrOperationByMstrOperationId': {
        'mstrOperation': {
          'mstrOperationId': 'o1111111-1111-1111-1111-111111111111',
          'controlCode': 'OP001',
          'remarks': '備考テキスト(編集後)',
          'labels': _labelsJaEn('a1111111-1111-1111-1111-111111111111', '組立運用', 'Assembly'),
          'detailTexts': _textJaEn('x1111111-1111-1111-1111-111111111111', '運用の詳細', 'Detail'),
          'operationTasks': _operationTasks(),
          '__typename': 'MstrOperation',
        },
        'clientMutationId': null,
        '__typename': 'UpdateMstrOperationPayload',
      },
      '__typename': 'Mutation',
    };

    final model = Mutation$OperationPageEdit.fromJson(raw);
    final entity = model.updateMstrOperationByMstrOperationId!.mstrOperation!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$OperationPageEdit$updateMstrOperationByMstrOperationId$mstrOperation
            .fromJson(restoredMap);

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });

  test('Query\$OperationPageRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'mstrOperationByMstrOperationId': {
        'mstrOperationId': 'o1111111-1111-1111-1111-111111111111',
        'controlCode': 'OP001',
        'remarks': '備考テキスト',
        'updateAt': '2026-10-14T00:00:00',
        'updateUserId': 'u1111111-1111-1111-1111-111111111111',
        'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
        'remove': false,
        'labels': _labelsJaEn('a1111111-1111-1111-1111-111111111111', '組立運用', 'Assembly'),
        'detailTexts': _textJaEn('x1111111-1111-1111-1111-111111111111', '運用の詳細', 'Detail'),
        'operationTasks': _operationTasks(),
        '__typename': 'MstrOperation',
      },
      '__typename': 'Query',
    };

    final model = Query$OperationPageRfe.fromJson(raw);
    final entity = model.mstrOperationByMstrOperationId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Query$OperationPageRfe$mstrOperationByMstrOperationId.fromJson(restoredMap);

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
