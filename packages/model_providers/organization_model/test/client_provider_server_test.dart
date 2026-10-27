// 検証用GraphQLサーバー(Postgraphile)への実接続テスト。
//
// クエリ文書とレスポンスの型は organization_model が生成したものを使う。
// 接続できないときはテストを中止(skip)する。ネットワークが無い環境では
//   flutter test --exclude-tags server
// で除外できる。読み取りのみで、サーバーのデータは変更しない。
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql/pms_graphql.dart';
import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';

const _serverUrls = [
  'http://192.168.1.100:5000/graphql',
  'http://192.168.9.245:5000/graphql',
];
const _serverTag = 'server';
const _anyLanguageCodeId = '00000000-0000-0000-0000-000000000000';

/// 候補のうち最初に接続できたURLを返す。どれも接続できないときは null。
Future<String?> _findReachableUrl() async {
  for (final url in _serverUrls) {
    if (await _canConnect(url)) return url;
  }
  return null;
}

Future<bool> _canConnect(String url) async {
  final uri = Uri.parse(url);
  try {
    final socket = await Socket.connect(
      uri.host,
      uri.port,
      timeout: const Duration(seconds: 3),
    );
    socket.destroy();
    return true;
  } catch (_) {
    return false;
  }
}

void main() {
  String? reachableUrl;

  setUpAll(() async {
    reachableUrl = await _findReachableUrl();
  });

  Future<void> Function() onServer(Future<void> Function() body) => () async {
    if (reachableUrl == null) {
      markTestSkipped('${_serverUrls.join(' / ')} に接続できないためテストを中止した');
      return;
    }
    await body();
  };

  group('GraphQLClientProvider.query against the test server', () {
    test(
      'PositionPageRead returns Ok with the totalCount',
      onServer(() async {
        final provider = GraphQLClientProvider(reachableUrl!, timeLimit: 20);

        final result = await provider.query(
          QueryOptions(
            document: documentNodeQueryPositionPageRead,
            variables: Variables$Query$PositionPageRead(
              first: 5,
              languageCodeId: _anyLanguageCodeId,
            ).toJson(),
          ),
        );

        expect(result, isA<Ok<Map<dynamic, dynamic>>>());
        final data = (result as Ok<Map<dynamic, dynamic>>).value;
        final parsed = Query$PositionPageRead.fromJson(
          Map<String, dynamic>.from(data),
        );
        expect(parsed.allInfoPositions, isNotNull);
        expect(parsed.allInfoPositions!.totalCount, greaterThanOrEqualTo(0));
        expect(parsed.allInfoPositions!.nodes.length, lessThanOrEqualTo(5));
      }),
      tags: _serverTag,
    );

    test(
      'an unknown field returns Err(DeveloperError)',
      onServer(() async {
        final provider = GraphQLClientProvider(reachableUrl!, timeLimit: 20);

        final result = await provider.query(
          QueryOptions(
            document: gql('{ allInfoPositions { thisFieldDoesNotExist } }'),
          ),
        );

        expect(result, isA<Err<Map<dynamic, dynamic>>>());
        final err = result as Err<Map<dynamic, dynamic>>;
        expect(err.error, isA<DeveloperError>());
        expect(err.graphqlErrors, contains('thisFieldDoesNotExist'));
      }),
      tags: _serverTag,
    );

    test(
      'a wrong port returns Err(NetworkError)',
      onServer(() async {
        final provider = GraphQLClientProvider(
          Uri.parse(reachableUrl!).replace(port: 1).toString(),
          timeLimit: 10,
        );

        final result = await provider.query(
          QueryOptions(document: gql('{ __typename }')),
        );

        expect(result, isA<Err<Map<dynamic, dynamic>>>());
      }),
      tags: _serverTag,
    );
  });
}
