// 要件0044: approval_operation_page画面
// (source/view.yaml #ApprovalOperationPage/#ApprovalOperationPageEdit)の
// GraphQLからbuild_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/approval_operation_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/approval_operation_page/approval_operation_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/approval_operation_page/approval_operation_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/approval_operation_page/approval_operation_page_rfe.graphql.dart';

Map<String, dynamic> _dictionaryValueConnection(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'dictionaryValue': value, '__typename': 'SharedDictionaryValue'},
        ],
  '__typename': 'SharedDictionaryValuesConnection',
};

Map<String, dynamic> _labelsJsonValue(String appellationsId, String nameJa) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'value': _dictionaryValueConnection(nameJa),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'value': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'value': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _labelsJsonJaEn(String appellationsId, String nameJa) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': _dictionaryValueConnection(nameJa),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': _dictionaryValueConnection(null),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': _dictionaryValueConnection(null),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _updateUserJson() => {
  'historyId': 'h1111111-1111-1111-1111-111111111111',
  'infoStaffId': 's1111111-1111-1111-1111-111111111111',
  'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
  'code': 'U001',
  'sex': null,
  'phone': null,
  'symbol': null,
  'privatePhone': null,
  'name': _labelsJsonValue(
    'a9999999-9999-9999-9999-999999999999',
    '管理者 花子',
  ),
  '__typename': 'HistoryInfoStaff',
};

Map<String, dynamic> _approvalJsonValue() => {
  'mstrApprovalId': 'v1111111-1111-1111-1111-111111111111',
  'infoDepartmentId': 'd9999999-9999-9999-9999-999999999999',
  'infoPositionId': 'p1111111-1111-1111-1111-111111111111',
  'priority': 1,
  'symbol': 'AP001',
  'remarks': null,
  'updateAt': '2026-09-30T00:00:00',
  'remove': false,
  'labels': _labelsJsonValue(
    'a2222222-2222-2222-2222-222222222222',
    '課長承認',
  ),
  'update_user': _updateUserJson(),
  '__typename': 'MstrApproval',
};

Map<String, dynamic> _patternDetailJsonValue() => {
  'mstrApprovalPatternDetailId': 'e1111111-1111-1111-1111-111111111111',
  'mstrApprovalId': 'v1111111-1111-1111-1111-111111111111',
  'mstrApprovalPatternId': 't1111111-1111-1111-1111-111111111111',
  'symbol': 'APD001',
  'remarks': null,
  'updateAt': '2026-09-30T00:00:00',
  'remove': false,
  'approval': _approvalJsonValue(),
  'update_user': _updateUserJson(),
  '__typename': 'MstrApprovalPatternDetail',
};

void main() {
  test('要件0044: Query\$ApprovalOperationPageRead <-> Map 往復変換が元と一致する', () {
    final raw = {
      'allMstrApprovalPatterns': {
        'totalCount': 1,
        'pageInfo': {
          'hasNextPage': false,
          'endCursor': null,
          '__typename': 'PageInfo',
        },
        'nodes': [
          {
            'mstrApprovalPatternId': 't1111111-1111-1111-1111-111111111111',
            'symbol': 'AOP001',
            'remarks': '備考テキスト',
            'updateAt': '2026-09-30T00:00:00',
            'remove': false,
            'labels': _labelsJsonValue(
              'a1111111-1111-1111-1111-111111111111',
              '購買承認フロー',
            ),
            'pattern_detail': {
              'totalCount': 1,
              'pageInfo': {
                'hasNextPage': false,
                'endCursor': null,
                '__typename': 'PageInfo',
              },
              'nodes': [_patternDetailJsonValue()],
              '__typename': 'MstrApprovalPatternDetailsConnection',
            },
            'update_user': _updateUserJson(),
            '__typename': 'MstrApprovalPattern',
          },
        ],
        '__typename': 'MstrApprovalPatternsConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$ApprovalOperationPageRead.fromJson(raw);
    final node = model.allMstrApprovalPatterns!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$ApprovalOperationPageRead$allMstrApprovalPatterns$nodes.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final patternDetailConnection =
        nodeMap[ApprovalOperationPageKeyName.pattern_detail.name]
            as Map<String, dynamic>;
    final approvalLabels = patternDetailConnection.extractFromEachRecord(
      'approval||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
      collapseSingleRecordPaths: {
        'approval||labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(approvalLabels, ['課長承認']);

    // ignore: avoid_print
    print(
      'APPROVAL_OPERATION_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}',
    );
  });

  test('要件0044: Mutation\$ApprovalOperationPageEdit <-> Map 往復変換が元と一致する', () {
    final raw = {
      'updateMstrApprovalPatternByMstrApprovalPatternId': {
        'mstrApprovalPattern': {
          'mstrApprovalPatternId': 't1111111-1111-1111-1111-111111111111',
          'remarks': '備考テキスト(編集後)',
          'labels': _labelsJsonJaEn(
            'a1111111-1111-1111-1111-111111111111',
            '購買承認フロー',
          ),
          'pattern_detail': {
            'totalCount': 1,
            'pageInfo': {
              'hasNextPage': false,
              'endCursor': null,
              '__typename': 'PageInfo',
            },
            'nodes': [
              {
                'mstrApprovalPatternDetailId':
                    'e1111111-1111-1111-1111-111111111111',
                'mstrApprovalId': 'v1111111-1111-1111-1111-111111111111',
                'mstrApprovalPatternId':
                    't1111111-1111-1111-1111-111111111111',
                'remarks': null,
                'approval': {
                  'mstrApprovalId': 'v1111111-1111-1111-1111-111111111111',
                  'infoDepartmentId': 'd9999999-9999-9999-9999-999999999999',
                  'infoPositionId': 'p1111111-1111-1111-1111-111111111111',
                  'priority': 1,
                  'remarks': null,
                  'labels': _labelsJsonJaEn(
                    'a2222222-2222-2222-2222-222222222222',
                    '課長承認',
                  ),
                  '__typename': 'MstrApproval',
                },
                '__typename': 'MstrApprovalPatternDetail',
              },
            ],
            '__typename': 'MstrApprovalPatternDetailsConnection',
          },
          '__typename': 'MstrApprovalPattern',
        },
        'clientMutationId': null,
        '__typename': 'UpdateMstrApprovalPatternPayload',
      },
      '__typename': 'Mutation',
    };

    final model = Mutation$ApprovalOperationPageEdit.fromJson(raw);
    final entity = model
        .updateMstrApprovalPatternByMstrApprovalPatternId!
        .mstrApprovalPattern!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$ApprovalOperationPageEdit$updateMstrApprovalPatternByMstrApprovalPatternId$mstrApprovalPattern.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });

  test('要件0044: Query\$ApprovalOperationPageRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'mstrApprovalPatternByMstrApprovalPatternId': {
        'mstrApprovalPatternId': 't1111111-1111-1111-1111-111111111111',
        'symbol': 'AOP001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-30T00:00:00',
        'updateUserId': 'u1111111-1111-1111-1111-111111111111',
        'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
        'remove': false,
        'labels': _labelsJsonJaEn(
          'a1111111-1111-1111-1111-111111111111',
          '購買承認フロー',
        ),
        'pattern_detail': {
          'totalCount': 1,
          'pageInfo': {
            'hasNextPage': false,
            'endCursor': null,
            '__typename': 'PageInfo',
          },
          'nodes': [
            {
              'mstrApprovalPatternDetailId':
                  'e1111111-1111-1111-1111-111111111111',
              'mstrApprovalId': 'v1111111-1111-1111-1111-111111111111',
              'mstrApprovalPatternId':
                  't1111111-1111-1111-1111-111111111111',
              'symbol': 'APD001',
              'remarks': null,
              'updateAt': '2026-09-30T00:00:00',
              'remove': false,
              'approval': {
                'mstrApprovalId': 'v1111111-1111-1111-1111-111111111111',
                'infoDepartmentId': 'd9999999-9999-9999-9999-999999999999',
                'infoPositionId': 'p1111111-1111-1111-1111-111111111111',
                'priority': 1,
                'symbol': 'AP001',
                'remarks': null,
                'updateAt': '2026-09-30T00:00:00',
                'remove': false,
                'labels': _labelsJsonJaEn(
                  'a2222222-2222-2222-2222-222222222222',
                  '課長承認',
                ),
                '__typename': 'MstrApproval',
              },
              '__typename': 'MstrApprovalPatternDetail',
            },
          ],
          '__typename': 'MstrApprovalPatternDetailsConnection',
        },
        '__typename': 'MstrApprovalPattern',
      },
      '__typename': 'Query',
    };

    final model = Query$ApprovalOperationPageRfe.fromJson(raw);
    final entity = model.mstrApprovalPatternByMstrApprovalPatternId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Query$ApprovalOperationPageRfe$mstrApprovalPatternByMstrApprovalPatternId.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
