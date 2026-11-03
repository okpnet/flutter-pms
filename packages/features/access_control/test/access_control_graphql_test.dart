// アクセス管理の取得元(GraphQL 版)のテスト。代役の通信路を使い、サーバーには接続しない。
import 'dart:async';

import 'package:access_control/access_control.dart';
import 'package:baton_lib/baton_lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:graphql/client.dart';

class _FakeLink extends Link {
  final calls = <(String, Map<String, dynamic>)>[];

  static const _responses = <String, Map<String, dynamic>>{
    'LanguageCodePageRead': {
      'allSharedLanguageCodes': {
        'nodes': [
          {'sharedLanguageCodeId': 'lang-ja', 'code': 'ja'},
          {'sharedLanguageCodeId': 'lang-en', 'code': 'en'},
        ],
      },
    },
    'DepartmentAccessPathPageRead': {
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
    'DepartmentAccessPathPageRemove': {},
  };

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    final name =
        request.operation.document.definitions
            .whereType<OperationDefinitionNode>()
            .first
            .name
            ?.value ??
        '';
    calls.add((name, Map<String, dynamic>.from(request.variables)));
    final data = _responses[name];
    if (data == null) throw StateError('想定外の操作: $name');
    return Stream.value(Response(data: data, response: const {}));
  }
}

void main() {
  late _FakeLink link;
  late List<IEntityRepository> repositories;

  setUp(() {
    link = _FakeLink();
    repositories = accessControlRepositories(
      GraphQLClient(link: link, cache: GraphQLCache()),
    );
  });

  IEntityRepository of(String key) =>
      repositories.firstWhere((r) => r.definition.key == key);

  test('4つの実体(アクセスパス・部署・担当者の許可・実効アクセスパス)の取得元がある', () {
    expect(repositories.map((r) => r.definition.key), [
      'accesspath',
      'deptaccesspath',
      'staffaccesspermission',
      'effectiveaccesspath',
    ]);
  });

  test('一覧は、窓口の平らな型を画面の項目(フラグは 1/空)に変換する', () async {
    final rows = await of('deptaccesspath').find(take: 10);
    expect(rows, hasLength(1));
    expect(rows.single.id, 'dp-1');
    expect(rows.single.valueOf('department'), 'dep-1');
    expect(rows.single.valueOf('access_path'), 'p-1');
    expect(rows.single.valueOf('write'), flagOn);
  });

  test('必須の項目が空の保存は、通信せず検証エラーにする', () async {
    expect(
      () => of('accesspath').save(
        const EntityRecord(
          id: '',
          values: {'name_ja': '', 'name_en': 'x', 'usecase_path': '/x'},
        ),
      ),
      throwsA(
        isA<EntityValidationException>().having(
          (e) => e.errors['name_ja'],
          'name_ja',
          EntityFieldError.required,
        ),
      ),
    );
    expect(link.calls, isEmpty);
  });

  test('削除は論理削除(remove=true)を呼ぶ', () async {
    await of('deptaccesspath').remove('dp-1');
    final call = link.calls.last;
    expect(call.$1, 'DepartmentAccessPathPageRemove');
    expect(call.$2, {'infoDepartmentAccessPathId': 'dp-1', 'remove': true});
  });

  test('実効アクセスパスは読み取り専用', () {
    expect(
      () => of('effectiveaccesspath').remove('s|p'),
      throwsUnsupportedError,
    );
  });

  test('アプリが取得元を渡すと、モジュールはサンプルの代わりにそれを登録簿へ登録する', () {
    const module = AccessControlModule();
    ProviderContainer build({required bool override}) {
      final container = ProviderContainer(
        overrides: [
          if (override)
            entityRepositoryOverridesProvider.overrideWithValue(repositories),
        ],
      );
      addTearDown(container.dispose);
      container.read(
        Provider<void>(
          (ref) => module.registerHandlers(CommandHandlerRegistry(), ref),
        ),
      );
      return container;
    }

    final sample = build(override: false).read(entityCatalogProvider);
    expect(sample.repository('accesspath'), isA<InMemoryEntityRepository>());
    final graphql = build(override: true).read(entityCatalogProvider);
    expect(
      graphql.repository('accesspath'),
      isNot(isA<InMemoryEntityRepository>()),
    );
    expect(graphql.repository('deptaccesspath'), same(repositories[1]));
  });
}
