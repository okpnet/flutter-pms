// アクセス管理の各画面(gql/*.yaml)について、生成モデルの nested_map_flattener.dart 往復変換を検証する。

import 'package:flutter_test/flutter_test.dart';
import 'package:access_control_model/access_control_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

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
  'name': _labelsJsonValue('a9999999-9999-9999-9999-999999999999', '管理者 花子'),
  '__typename': 'HistoryInfoStaff',
};

const _id1 = 'a1111111-1111-1111-1111-111111111111';
const _id2 = 'b2222222-2222-2222-2222-222222222222';
const _dept = 'd1111111-1111-1111-1111-111111111111';
const _staff = 's1111111-1111-1111-1111-111111111111';
const _hist = 'h2222222-2222-2222-2222-222222222222';
const _app = 'e1111111-1111-1111-1111-111111111111';
const _ap = 'a9999999-9999-9999-9999-999999999999';

Map<String, dynamic> _accessPathNode() => {
  'infoAccessPathId': _id1,
  'infoAppId': _app,
  'labels': _labelsJsonValue(_ap, '単位台帳'),
  'usecasePath': '/system/unit',
  'symbol': 'AP-UNIT',
  'remarks': '備考',
  'department_access_path_count': {
    'infoAccessPathId': _id1,
    '__typename': 'VAccessPathDepartmentAccessPathCount',
  },
  'staff_access_permission_count': {
    'infoAccessPathId': _id1,
    '__typename': 'VAccessPathStaffAccessPermissionCount',
  },
  'updateAt': '2026-11-03T00:00:00',
  'remove': false,
  'update_user': _updateUserJson(),
  '__typename': 'InfoAccessPath',
};

Map<String, dynamic> _connection(
  String typename,
  List<Map<String, dynamic>> nodes,
) => {
  'totalCount': nodes.length,
  'pageInfo': {
    'hasNextPage': false,
    'endCursor': null,
    '__typename': 'PageInfo',
  },
  'nodes': nodes,
  '__typename': typename,
};

/// toJson → flatten → unflatten → fromJson が元と一致すること。
void _expectRoundTrip<T>(
  Map<String, dynamic> nodeMap,
  T node,
  T Function(Map<String, dynamic>) fromJson,
) {
  final restoredMap = nodeMap.flatten().unflatten();
  expect(restoredMap, equals(nodeMap));
  expect(fromJson(restoredMap), equals(node));
}

void main() {
  test('Query\$AccessPathPageRead <-> Map 往復変換が元と一致する', () {
    final model = Query$AccessPathPageRead.fromJson({
      'allInfoAccessPaths': _connection('InfoAccessPathsConnection', [
        _accessPathNode(),
      ]),
      '__typename': 'Query',
    });
    final node = model.allInfoAccessPaths!.nodes.single!;
    _expectRoundTrip(
      node.toJson(),
      node,
      Query$AccessPathPageRead$allInfoAccessPaths$nodes.fromJson,
    );
  });

  test('Query\$DepartmentAccessPathPageRead <-> Map 往復変換が元と一致する', () {
    final model = Query$DepartmentAccessPathPageRead.fromJson({
      'allInfoDepartmentAccessPaths': _connection(
        'InfoDepartmentAccessPathsConnection',
        [
          {
            'infoDepartmentAccessPathId': _id2,
            'infoDepartmentId': _dept,
            'infoAccessPathId': _id1,
            'access_path': _accessPathNode(),
            'write': true,
            'symbol': null,
            'remarks': null,
            'updateAt': '2026-11-03T00:00:00',
            'remove': false,
            'update_user': _updateUserJson(),
            '__typename': 'InfoDepartmentAccessPath',
          },
        ],
      ),
      '__typename': 'Query',
    });
    final node = model.allInfoDepartmentAccessPaths!.nodes.single!;
    _expectRoundTrip(
      node.toJson(),
      node,
      Query$DepartmentAccessPathPageRead$allInfoDepartmentAccessPaths$nodes
          .fromJson,
    );
  });

  test('Query\$StaffAccessPermissionPageRead <-> Map 往復変換が元と一致する', () {
    final model = Query$StaffAccessPermissionPageRead.fromJson({
      'allInfoStaffAccessPermissions': _connection(
        'InfoStaffAccessPermissionsConnection',
        [
          {
            'infoStaffAccessPermissionId': _id2,
            'infoStaffId': _staff,
            'infoAccessPathId': _id1,
            'access_path': _accessPathNode(),
            'write': false,
            'symbol': null,
            'remarks': '例外',
            'updateAt': '2026-11-03T00:00:00',
            'remove': false,
            'update_user': _updateUserJson(),
            '__typename': 'InfoStaffAccessPermission',
          },
        ],
      ),
      '__typename': 'Query',
    });
    final node = model.allInfoStaffAccessPermissions!.nodes.single!;
    _expectRoundTrip(
      node.toJson(),
      node,
      Query$StaffAccessPermissionPageRead$allInfoStaffAccessPermissions$nodes
          .fromJson,
    );
  });

  test('Query\$StaffEffectiveAccessPathPageRead <-> Map 往復変換が元と一致する', () {
    final model = Query$StaffEffectiveAccessPathPageRead.fromJson({
      'allVStaffEffectiveAccessPaths': _connection(
        'VStaffEffectiveAccessPathsConnection',
        [
          {
            'infoStaffId': _staff,
            'staffCode': 'U0001',
            'staffSymbol': null,
            'infoAccessPathId': _id1,
            'accessPathSymbol': 'AP-UNIT',
            'usecasePath': '/system/unit',
            'infoAppId': _app,
            'canWrite': true,
            'fromDepartment': true,
            'fromStaff': false,
            '__typename': 'VStaffEffectiveAccessPath',
          },
        ],
      ),
      '__typename': 'Query',
    });
    final node = model.allVStaffEffectiveAccessPaths!.nodes.single!;
    _expectRoundTrip(
      node.toJson(),
      node,
      Query$StaffEffectiveAccessPathPageRead$allVStaffEffectiveAccessPaths$nodes
          .fromJson,
    );
  });

  test('AccessPathPage の Edit / Rfe 往復変換が元と一致する', () {
    final edit = Mutation$AccessPathPageEdit.fromJson({
      'updateInfoAccessPathByInfoAccessPathId': {
        'infoAccessPath': {
          'infoAccessPathId': _id1,
          'usecasePath': '/system/unit',
          'remarks': null,
          'labels': _labelsJsonJaEn(_ap, '単位台帳'),
          '__typename': 'InfoAccessPath',
        },
        '__typename': 'UpdateInfoAccessPathPayload',
      },
      '__typename': 'Mutation',
    }).updateInfoAccessPathByInfoAccessPathId!.infoAccessPath!;
    _expectRoundTrip(
      edit.toJson(),
      edit,
      Mutation$AccessPathPageEdit$updateInfoAccessPathByInfoAccessPathId$infoAccessPath
          .fromJson,
    );

    final rfe = Query$AccessPathPageRfe.fromJson({
      'infoAccessPathByInfoAccessPathId': {
        'infoAccessPathId': _id1,
        'usecasePath': '/system/unit',
        'remarks': null,
        'updateAt': '2026-11-03T00:00:00',
        'updateUserId': _staff,
        'updateUserHistoryId': _hist,
        'remove': false,
        'labels': _labelsJsonJaEn(_ap, '単位台帳'),
        '__typename': 'InfoAccessPath',
      },
      '__typename': 'Query',
    }).infoAccessPathByInfoAccessPathId!;
    _expectRoundTrip(
      rfe.toJson(),
      rfe,
      Query$AccessPathPageRfe$infoAccessPathByInfoAccessPathId.fromJson,
    );
  });

  test('DepartmentAccessPathPage の Edit / Rfe 往復変換が元と一致する', () {
    final edit =
        Mutation$DepartmentAccessPathPageEdit.fromJson({
              'updateInfoDepartmentAccessPathByInfoDepartmentAccessPathId': {
                'infoDepartmentAccessPath': {
                  'infoDepartmentAccessPathId': _id2,
                  'infoDepartmentId': _dept,
                  'infoAccessPathId': _id1,
                  'write': true,
                  'remarks': null,
                  '__typename': 'InfoDepartmentAccessPath',
                },
                '__typename': 'UpdateInfoDepartmentAccessPathPayload',
              },
              '__typename': 'Mutation',
            })
            .updateInfoDepartmentAccessPathByInfoDepartmentAccessPathId!
            .infoDepartmentAccessPath!;
    _expectRoundTrip(
      edit.toJson(),
      edit,
      Mutation$DepartmentAccessPathPageEdit$updateInfoDepartmentAccessPathByInfoDepartmentAccessPathId$infoDepartmentAccessPath
          .fromJson,
    );

    final rfe = Query$DepartmentAccessPathPageRfe.fromJson({
      'infoDepartmentAccessPathByInfoDepartmentAccessPathId': {
        'infoDepartmentAccessPathId': _id2,
        'infoDepartmentId': _dept,
        'infoAccessPathId': _id1,
        'write': true,
        'remarks': null,
        'updateUserId': _staff,
        'updateUserHistoryId': _hist,
        'remove': false,
        'updateAt': '2026-11-03T00:00:00',
        '__typename': 'InfoDepartmentAccessPath',
      },
      '__typename': 'Query',
    }).infoDepartmentAccessPathByInfoDepartmentAccessPathId!;
    _expectRoundTrip(
      rfe.toJson(),
      rfe,
      Query$DepartmentAccessPathPageRfe$infoDepartmentAccessPathByInfoDepartmentAccessPathId
          .fromJson,
    );
  });

  test('StaffAccessPermissionPage の Edit / Rfe 往復変換が元と一致する', () {
    final edit =
        Mutation$StaffAccessPermissionPageEdit.fromJson({
              'updateInfoStaffAccessPermissionByInfoStaffAccessPermissionId': {
                'infoStaffAccessPermission': {
                  'infoStaffAccessPermissionId': _id2,
                  'infoStaffId': _staff,
                  'infoAccessPathId': _id1,
                  'write': false,
                  'remarks': null,
                  '__typename': 'InfoStaffAccessPermission',
                },
                '__typename': 'UpdateInfoStaffAccessPermissionPayload',
              },
              '__typename': 'Mutation',
            })
            .updateInfoStaffAccessPermissionByInfoStaffAccessPermissionId!
            .infoStaffAccessPermission!;
    _expectRoundTrip(
      edit.toJson(),
      edit,
      Mutation$StaffAccessPermissionPageEdit$updateInfoStaffAccessPermissionByInfoStaffAccessPermissionId$infoStaffAccessPermission
          .fromJson,
    );

    final rfe = Query$StaffAccessPermissionPageRfe.fromJson({
      'infoStaffAccessPermissionByInfoStaffAccessPermissionId': {
        'infoStaffAccessPermissionId': _id2,
        'infoStaffId': _staff,
        'infoAccessPathId': _id1,
        'write': false,
        'remarks': null,
        'updateUserId': _staff,
        'updateUserHistoryId': _hist,
        'remove': false,
        'updateAt': '2026-11-03T00:00:00',
        '__typename': 'InfoStaffAccessPermission',
      },
      '__typename': 'Query',
    }).infoStaffAccessPermissionByInfoStaffAccessPermissionId!;
    _expectRoundTrip(
      rfe.toJson(),
      rfe,
      Query$StaffAccessPermissionPageRfe$infoStaffAccessPermissionByInfoStaffAccessPermissionId
          .fromJson,
    );
  });
}
