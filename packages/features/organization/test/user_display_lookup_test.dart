// ログインユーザーの表示用の情報(氏名・所属の部署名)を引く関数の単体テスト。通信は差し替えた Link で行い、サーバーには接続しない。

import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';

class _FakeLink extends Link {
  _FakeLink(this._respond);

  final Response Function(Request request) _respond;
  final requests = <Request>[];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    return Stream.value(_respond(request));
  }
}

GraphQLClient _client(Link link) =>
    GraphQLClient(link: link, cache: GraphQLCache());

const _languages = {
  'allSharedLanguageCodes': {
    'nodes': [
      {'sharedLanguageCodeId': 'lang-ja', 'code': 'ja'},
    ],
  },
};

Response _assigns(List<Map<String, Object?>> nodes) => Response(
  data: {
    'allInfoAssigns': {
      'totalCount': nodes.length,
      'pageInfo': {
        'hasNextPage': false,
        'endCursor': null,
        '__typename': 'PageInfo',
      },
      'nodes': nodes,
      '__typename': 'InfoAssignsConnection',
    },
    '__typename': 'Query',
  },
  response: const {},
);

/// 辞書(名称)の値。`labels` の形は、読み込みの文書の別名に合わせる。
Map<String, Object?> _names(String value) => {
  '__typename': 'SharedAppellation',
  'sharedAppellationsId': 'ap-1',
  'sharedDictionaryBySharedDictionaryNameId': {
    '__typename': 'SharedDictionary',
    'sharedDictionaryId': 'dict-1',
    'value': {
      '__typename': 'SharedDictionaryValuesConnection',
      'nodes': [
        {'__typename': 'SharedDictionaryValue', 'dictionaryValue': value},
      ],
    },
  },
};

Map<String, Object?> _assignRow({
  required String departmentId,
  required String staffName,
}) => {
  '__typename': 'InfoAssign',
  'infoAssignId': 'assign-1',
  'infoPositionId': 'p-1',
  'infoDepartmentId': departmentId,
  'staff': {
    '__typename': 'InfoStaff',
    'infoStaffId': 's-1',
    'infoCompanyId': 'c-1',
    'code': 'S-001',
    'labels': _names(staffName),
  },
};

Response _departments(List<Map<String, Object?>> nodes) => Response(
  data: {
    'allInfoDepartments': {
      'totalCount': nodes.length,
      'pageInfo': {
        'hasNextPage': false,
        'endCursor': null,
        '__typename': 'PageInfo',
      },
      'nodes': nodes,
      '__typename': 'InfoDepartmentsConnection',
    },
    '__typename': 'Query',
  },
  response: const {},
);

Map<String, Object?> _departmentRow(String name) => {
  '__typename': 'InfoDepartment',
  'infoDepartmentId': 'd-1',
  'infoCompanyId': 'c-1',
  'infoOfficeId': 'o-1',
  'code': 'D-001',
  'departmentKinds': {'__typename': 'InfoDepartmentKindValuesConnection', 'totalCount': 0, 'pageInfo': {'__typename': 'PageInfo', 'hasNextPage': false, 'endCursor': null}, 'nodes': <Object?>[]},
  'parent': {'__typename': 'InfoDepartmentTreesConnection', 'nodes': <Object?>[]},
  'labels': _names(name),
};

void main() {
  test('割当が無い担当者は、氏名・所属とも空(表示はユーザーIDなど既定に任せる)', () async {
    final link = _FakeLink((r) {
      if (!r.variables.containsKey('first')) {
        return Response(data: _languages, response: const {});
      }
      return _assigns(const []);
    });
    final lookup = userDisplayLookup(_client(link));

    final d = await lookup('s-none');

    expect(d.name, isEmpty);
    expect(d.department, isEmpty);
    // 有効な割当のうち優先順位が最も高い 1 件だけを読む
    final assign = link.requests.last.variables;
    expect(assign['first'], 1);
    expect(assign['orderBy'], ['PRIORITY_ASC']);
    expect(assign['filter'], {
      'infoStaffId': {'equalTo': 's-none'},
      'enable': {'equalTo': true},
    });
    expect(assign['languageCodeId'], 'lang-ja');
  });

  test('通信の失敗は、そのまま投げる(呼び出し側が既定の表示にする)', () async {
    final link = _FakeLink((r) {
      if (!r.variables.containsKey('first')) {
        return Response(data: _languages, response: const {});
      }
      return Response(
        errors: const [GraphQLError(message: 'boom')],
        response: const {},
      );
    });
    final lookup = userDisplayLookup(_client(link));

    expect(() => lookup('s-1'), throwsA(isA<OperationException>()));
  });
  test('割当・部署の行があるときは、氏名(担当者の名称)と所属の部署名を返す', () async {
    final link = _FakeLink((r) {
      if (!r.variables.containsKey('first')) {
        return Response(data: _languages, response: const {});
      }
      // 割当の読み込みは、部署の絞り込み(infoDepartmentId)を持たない。部署の読み込みだけが持つ
      final filter = r.variables['filter'] as Map?;
      if (filter != null && filter.containsKey('infoDepartmentId')) {
        return _departments([_departmentRow('製造部')]);
      }
      return _assigns([_assignRow(departmentId: 'd-1', staffName: '田中 太郎')]);
    });
    final lookup = userDisplayLookup(_client(link));

    final d = await lookup('s-1');

    expect(d.name, '田中 太郎');
    expect(d.department, '製造部');
    // 部署は、割当の部署の ID で 1 件だけ引く(言語も同じ)
    final dept = link.requests.last.variables;
    expect(dept['first'], 1);
    expect(dept['filter'], {
      'infoDepartmentId': {'equalTo': 'd-1'},
    });
    expect(dept['languageCodeId'], 'lang-ja');
    // 言語コードの読み込み + 割当 + 部署の 3 回(言語は 1 回だけ)
    expect(link.requests, hasLength(3));
  });

  test('割当は有るが部署の行が無いときは、氏名だけ返し、所属は空', () async {
    final link = _FakeLink((r) {
      if (!r.variables.containsKey('first')) {
        return Response(data: _languages, response: const {});
      }
      final filter = r.variables['filter'] as Map?;
      if (filter != null && filter.containsKey('infoDepartmentId')) {
        return _departments(const []);
      }
      return _assigns([_assignRow(departmentId: 'd-9', staffName: '鈴木 花子')]);
    });
    final d = await userDisplayLookup(_client(link))('s-1');

    expect(d.name, '鈴木 花子');
    expect(d.department, isEmpty);
  });

  test('部署の読み込みの失敗は、そのまま投げる(氏名だけを出すかは、呼び出し側が決める)', () async {
    final link = _FakeLink((r) {
      if (!r.variables.containsKey('first')) {
        return Response(data: _languages, response: const {});
      }
      final filter = r.variables['filter'] as Map?;
      if (filter != null && filter.containsKey('infoDepartmentId')) {
        return Response(
          errors: const [GraphQLError(message: 'boom')],
          response: const {},
        );
      }
      return _assigns([_assignRow(departmentId: 'd-1', staffName: '田中 太郎')]);
    });

    expect(
      () => userDisplayLookup(_client(link))('s-1'),
      throwsA(isA<OperationException>()),
    );
  });
}
