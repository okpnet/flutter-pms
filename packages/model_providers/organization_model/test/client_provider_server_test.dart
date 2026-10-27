// 検証用GraphQLサーバー(Postgraphile)への実接続テスト。
//
// クエリ文書とレスポンスの型は organization_model が生成したものを使う。
// 接続先と中止(skip)の扱いは data_test_harness の serverTest が持つ。ネットワークが無い環境では
//   flutter test --exclude-tags server
// で除外できる。読み取りのみで、サーバーのデータは変更しない。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql/pms_graphql.dart';
import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';

const _anyLanguageCodeId = '00000000-0000-0000-0000-000000000000';

void main() {
  group('GraphQLClientProvider.query against the test server', () {
    serverTest('PositionPageRead returns Ok with the totalCount', (
      server,
    ) async {
      final provider = server.provider;

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
    });

    serverTest('an unknown field returns Err(DeveloperError)', (server) async {
      final provider = server.provider;

      final result = await provider.query(
        QueryOptions(
          document: gql('{ allInfoPositions { thisFieldDoesNotExist } }'),
        ),
      );

      expect(result, isA<Err<Map<dynamic, dynamic>>>());
      final err = result as Err<Map<dynamic, dynamic>>;
      expect(err.error, isA<DeveloperError>());
      expect(err.graphqlErrors, contains('thisFieldDoesNotExist'));
    });

    serverTest('a wrong port returns Err(NetworkError)', (server) async {
      final provider = GraphQLClientProvider(
        Uri.parse(server.url).replace(port: 1).toString(),
        timeLimit: 10,
      );

      final result = await provider.query(
        QueryOptions(document: gql('{ __typename }')),
      );

      expect(result, isA<Err<Map<dynamic, dynamic>>>());
    });
  });
}
