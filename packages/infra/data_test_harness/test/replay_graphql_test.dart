import 'dart:io';

import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';

final _list = gql(
  'query PositionPageRead(\$first: Int) { allPositions(first: \$first) { nodes { id } } }',
);

void main() {
  Future<GraphqlProverResult<Map<dynamic, dynamic>>> run(
    GraphQLClientProvider provider, {
    int first = 10,
  }) => provider.query(
    QueryOptions(document: _list, variables: {'first': first}),
  );

  test('登録した応答を返し、要求を記録する(サーバーに接続しない)', () async {
    final link = ReplayLink()
      ..on(
        'PositionPageRead',
        data: {
          'allPositions': {
            'nodes': [
              {'id': 'a'},
            ],
          },
        },
      );
    final result = await run(ReplayGraphql.provider(link));
    expect(result, isA<Ok<Map<dynamic, dynamic>>>());
    expect(
      ((result as Ok<Map<dynamic, dynamic>>).value['allPositions']
              as Map)['nodes']
          as List,
      hasLength(1),
    );
    expect(link.requests.single.variables, {'first': 10});
  });

  test('空の一覧を返せる(空の表示の確認)', () async {
    final link = ReplayLink()
      ..on(
        'PositionPageRead',
        data: {
          'allPositions': {'nodes': []},
        },
      );
    final result = await run(ReplayGraphql.provider(link));
    expect(result, isA<Ok<Map<dynamic, dynamic>>>());
  });

  test('delay の間は完了しない(読み込み中の表示の確認)', () async {
    final link = ReplayLink()
      ..on(
        'PositionPageRead',
        delay: const Duration(milliseconds: 300),
        data: {
          'allPositions': {'nodes': []},
        },
      );
    var done = false;
    final future = run(ReplayGraphql.provider(link)).then((r) => done = true);
    await Future<void>.delayed(const Duration(milliseconds: 100));
    expect(done, isFalse);
    await future;
    expect(done, isTrue);
  });

  test('GraphQL のエラー・通信の失敗は Err になる', () async {
    final errorLink = ReplayLink()
      ..on(
        'PositionPageRead',
        errors: [const GraphQLError(message: 'permission denied')],
      );
    expect(
      await run(ReplayGraphql.provider(errorLink)),
      isA<Err<Map<dynamic, dynamic>>>(),
    );

    final failLink = ReplayLink()
      ..on('PositionPageRead', failWith: const SocketException('接続できません'));
    expect(
      await run(ReplayGraphql.provider(failLink)),
      isA<Err<Map<dynamic, dynamic>>>(),
    );
  });

  test('登録していない操作は、黙って空を返さず、例外になる', () async {
    // 登録の漏れは、プロバイダーが「未対応の例外」として投げる(Err にならず、テストが落ちて気づける)。
    expect(run(ReplayGraphql.provider(ReplayLink())), throwsException);
  });

  test('変数の条件(when)で応答を分けられる', () async {
    final link = ReplayLink()
      ..on(
        'PositionPageRead',
        when: (v) => v['first'] == 1,
        data: {
          'allPositions': {
            'nodes': [
              {'id': 'one'},
            ],
          },
        },
      )
      ..on(
        'PositionPageRead',
        data: {
          'allPositions': {'nodes': []},
        },
      );
    final provider = ReplayGraphql.provider(link);
    final one = await run(provider, first: 1) as Ok<Map<dynamic, dynamic>>;
    final other = await run(provider, first: 5) as Ok<Map<dynamic, dynamic>>;
    expect((one.value['allPositions'] as Map)['nodes'], hasLength(1));
    expect((other.value['allPositions'] as Map)['nodes'], isEmpty);
  });

  test('記録(RecordingLink)した JSON を、サーバー無しで再生できる', () async {
    final dir = Directory.systemTemp.createTempSync('pms_replay_');
    addTearDown(() => dir.deleteSync(recursive: true));

    // 実サーバーの代わりに、別の ReplayLink を「本物の通信」に見立てて記録する。
    final source = ReplayLink()
      ..on(
        'PositionPageRead',
        data: {
          'allPositions': {
            'nodes': [
              {'id': 'recorded'},
            ],
          },
        },
      );
    final recorded = await run(
      ReplayGraphql.provider(RecordingLink(source, dir)),
      first: 3,
    );
    expect(recorded, isA<Ok<Map<dynamic, dynamic>>>());
    expect(File('${dir.path}/PositionPageRead.json').existsSync(), isTrue);

    final replay = ReplayLink()..loadDirectory(dir);
    final provider = ReplayGraphql.provider(replay);
    // 記録した変数でも、記録に無い変数でも、記録の応答を返す。
    for (final first in [3, 99]) {
      final r = await run(provider, first: first) as Ok<Map<dynamic, dynamic>>;
      expect(
        (((r.value['allPositions'] as Map)['nodes'] as List).single
            as Map)['id'],
        'recorded',
      );
    }
  });
}
