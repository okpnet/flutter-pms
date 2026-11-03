// AccessControlClient の一覧・取得・保存・削除のテスト(代役の通信路。サーバーのデータは変えない)。
import 'dart:async';

import 'package:access_control_model/access_control_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';

class _FakeLink extends Link {
  _FakeLink(this.responses);
  final Map<String, Map<String, dynamic> Function(Map<String, dynamic>)>
  responses;
  final calls = <(String, Map<String, dynamic>)>[];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    final name =
        request.operation.document.definitions
            .whereType<OperationDefinitionNode>()
            .first
            .name
            ?.value ??
        '';
    final vars = Map<String, dynamic>.from(request.variables);
    calls.add((name, vars));
    final make = responses[name];
    if (make == null) throw StateError('想定外の操作: $name');
    return Stream.value(Response(data: make(vars), response: const {}));
  }

  Map<String, dynamic> lastVars(String op) =>
      calls.lastWhere((c) => c.$1 == op).$2;
}

Map<String, dynamic> _dict(String id, {String ja = '', String en = ''}) => {
  'sharedDictionaryId': id,
  'ja': {
    'nodes': [
      {'dictionaryValue': ja},
    ],
  },
  'en': {
    'nodes': [
      {'dictionaryValue': en},
    ],
  },
};

_FakeLink _link() => _FakeLink({
  'LanguageCodePageRead': (_) => {
    'allSharedLanguageCodes': {
      'nodes': [
        {'sharedLanguageCodeId': 'lang-ja', 'code': 'ja'},
        {'sharedLanguageCodeId': 'lang-en', 'code': 'en'},
      ],
    },
  },
  'AccessPathPageRead': (v) => {
    'allInfoAccessPaths': {
      'nodes': [
        {
          'infoAccessPathId': 'p-1',
          'usecasePath': '/e/unit',
          'symbol': 'YU',
          'remarks': null,
          'labels': {
            'sharedDictionaryBySharedDictionaryNameId': {
              'value': {
                'nodes': [
                  {'dictionaryValue': '単位'},
                ],
              },
            },
          },
        },
      ],
    },
  },
  'AccessPathPageRfe': (_) => {
    'infoAccessPathByInfoAccessPathId': {
      'infoAccessPathId': 'p-1',
      'usecasePath': '/e/unit',
      'remarks': 'メモ',
      'labels': {
        'sharedAppellationsId': 'ap-1',
        'sharedDictionaryBySharedDictionaryNameId': _dict(
          'd-name',
          ja: '単位',
          en: 'Unit',
        ),
        'sharedDictionaryBySharedDictionaryPronunciationId': _dict(
          'd-pron',
          ja: 'タンイ',
        ),
        'sharedDictionaryBySharedDictionaryNicknameId': _dict('d-nick'),
      },
    },
  },
  'AccessPathPageEdit': (_) => {'updateInfoAccessPathByInfoAccessPathId': {}},
  'AccessPathPageRemove': (_) => {'updateInfoAccessPathByInfoAccessPathId': {}},
  'DepartmentAccessPathPageRead': (_) => {
    'allInfoDepartmentAccessPaths': {
      'nodes': [
        {
          'infoDepartmentAccessPathId': 'dp-1',
          'infoDepartmentId': 'dep-1',
          'infoAccessPathId': 'p-1',
          'write': true,
          'remarks': null,
        },
      ],
    },
  },
  'DepartmentAccessPathPageCreate': (_) => {
    'createInfoDepartmentAccessPath': {
      'infoDepartmentAccessPath': {'infoDepartmentAccessPathId': 'dp-new'},
    },
  },
  'DepartmentAccessPathPageEdit': (_) => {},
  'DepartmentAccessPathPageRemove': (_) => {},
  'StaffAccessPermissionPageRead': (_) => {
    'allInfoStaffAccessPermissions': {'nodes': []},
  },
  'StaffAccessPermissionPageCreate': (_) => {
    'createInfoStaffAccessPermission': {
      'infoStaffAccessPermission': {'infoStaffAccessPermissionId': 'sp-new'},
    },
  },
  'StaffAccessPermissionPageEdit': (_) => {},
  'StaffAccessPermissionPageRemove': (_) => {},
  'StaffEffectiveAccessPathPageRead': (_) => {
    'allVStaffEffectiveAccessPaths': {
      'nodes': [
        {
          'infoStaffId': 's-1',
          'infoAccessPathId': 'p-1',
          'usecasePath': '/e/unit',
          'canWrite': true,
          'fromDepartment': true,
          'fromStaff': false,
        },
      ],
    },
  },
});

AccessControlClient _clientOn(Link link) => AccessControlClient(
  client: GraphQLClient(link: link, cache: GraphQLCache()),
);

void main() {
  test('アクセスパスの一覧は、ja の名前・パス・symbol を平らな型で返す', () async {
    final link = _link();
    final list = await _clientOn(link).listAccessPaths();
    expect(list, hasLength(1));
    expect(list.single.id, 'p-1');
    expect(list.single.nameJa, '単位');
    expect(list.single.usecasePath, '/e/unit');
    expect(list.single.symbol, 'YU');
    expect(link.lastVars('AccessPathPageRead')['languageCodeId'], 'lang-ja');
  });

  test('アクセスパスの取得は、ja・en の名前と symbol を返す。無ければ null', () async {
    final r = await _clientOn(_link()).getAccessPath('p-1');
    expect(r!.nameJa, '単位');
    expect(r.nameEn, 'Unit');
    expect(r.symbol, 'YU');
    expect(r.remarks, 'メモ');
    final none = _FakeLink({
      ..._link().responses,
      'AccessPathPageRfe': (_) => {'infoAccessPathByInfoAccessPathId': null},
    });
    expect(await _clientOn(none).getAccessPath('x'), isNull);
  });

  test('アクセスパスの更新は、いまの辞書の id と読み・略称を保ち、名前とパスだけ直す', () async {
    final link = _link();
    final id = await _clientOn(link).saveAccessPath(
      const AccessPathRecord(
        id: 'p-1',
        nameJa: '単位台帳',
        nameEn: 'Unit ledger',
        usecasePath: '/e/unit',
      ),
    );
    expect(id, 'p-1');
    final v = link.lastVars('AccessPathPageEdit');
    expect(v['infoAccessPathId'], 'p-1');
    expect(v['sharedAppellationsId'], 'ap-1');
    expect(v['nameSharedDictionaryId'], 'd-name');
    expect(v['nameJa'], '単位台帳');
    expect(v['nameEn'], 'Unit ledger');
    expect(v['pronunciationSharedDictionaryId'], 'd-pron');
    expect(v['pronunciationJa'], 'タンイ'); // 読みは保つ
    expect(v['nicknameJa'], '');
    expect(v['jaLanguageCodeId'], 'lang-ja');
    expect(v['remarks'], isNull); // 空は null
  });

  test('論理削除は remove=true、元に戻すと false', () async {
    final link = _link();
    final client = _clientOn(link);
    await client.removeAccessPath('p-1');
    expect(link.lastVars('AccessPathPageRemove'), {
      'infoAccessPathId': 'p-1',
      'remove': true,
    });
    await client.removeAccessPath('p-1', restore: true);
    expect(link.lastVars('AccessPathPageRemove')['remove'], false);
    await client.removeDepartmentAccessPath('dp-1');
    expect(link.lastVars('DepartmentAccessPathPageRemove'), {
      'infoDepartmentAccessPathId': 'dp-1',
      'remove': true,
    });
    await client.removeStaffAccessPermission('sp-1');
    expect(link.lastVars('StaffAccessPermissionPageRemove'), {
      'infoStaffAccessPermissionId': 'sp-1',
      'remove': true,
    });
  });

  test('部署のアクセスパスは、登録(id が空)と更新を分け、部署で絞って一覧できる', () async {
    final link = _link();
    final client = _clientOn(link);
    final created = await client.saveDepartmentAccessPath(
      const DepartmentAccessPathRecord(
        departmentId: 'dep-1',
        accessPathId: 'p-1',
        write: true,
      ),
    );
    expect(created, 'dp-new');
    expect(link.lastVars('DepartmentAccessPathPageCreate'), {
      'infoDepartmentId': 'dep-1',
      'infoAccessPathId': 'p-1',
      'write': true,
      'remarks': null,
    });
    await client.saveDepartmentAccessPath(
      const DepartmentAccessPathRecord(
        id: 'dp-1',
        departmentId: 'dep-1',
        accessPathId: 'p-2',
        remarks: 'x',
      ),
    );
    final edit = link.lastVars('DepartmentAccessPathPageEdit');
    expect(edit['infoDepartmentAccessPathId'], 'dp-1');
    expect(edit['write'], false);
    expect(edit['remarks'], 'x');

    final list = await client.listDepartmentAccessPaths(departmentId: 'dep-1');
    expect(list.single.write, isTrue);
    expect(
      (link.lastVars('DepartmentAccessPathPageRead')['filter']
          as Map)['infoDepartmentId'],
      {'equalTo': 'dep-1'},
    );
  });

  test('担当者のアクセスパス許可は、登録と更新を分ける', () async {
    final link = _link();
    final client = _clientOn(link);
    expect(
      await client.saveStaffAccessPermission(
        const StaffAccessPermissionRecord(staffId: 's-1', accessPathId: 'p-1'),
      ),
      'sp-new',
    );
    await client.saveStaffAccessPermission(
      const StaffAccessPermissionRecord(
        id: 'sp-1',
        staffId: 's-1',
        accessPathId: 'p-1',
        write: true,
      ),
    );
    expect(
      link.lastVars(
        'StaffAccessPermissionPageEdit',
      )['infoStaffAccessPermissionId'],
      'sp-1',
    );
    expect(await client.listStaffAccessPermissions(staffId: 's-1'), isEmpty);
  });

  test('実効アクセスパスは、担当者で絞って平らな型で返す', () async {
    final link = _link();
    final list = await _clientOn(link).listEffectiveAccessPaths(staffId: 's-1');
    expect(list.single.usecasePath, '/e/unit');
    expect(list.single.canWrite, isTrue);
    expect(list.single.fromDepartment, isTrue);
    expect(list.single.fromStaff, isFalse);
    expect(
      (link.lastVars('StaffEffectiveAccessPathPageRead')['filter']
          as Map)['infoStaffId'],
      {'equalTo': 's-1'},
    );
  });
}
