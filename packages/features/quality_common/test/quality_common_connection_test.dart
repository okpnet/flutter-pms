import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:quality_common/quality_common.dart';

/// 品質共通の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 品質共通の取得元(読み取り専用)', () {
    serverTest('リスクを、画面の値(題名は言語コード ja)で取得できる', (server) async {
      final risk = qualityCommonRepositories(server.provider.client).single;
      final rows = await risk.find(take: 50);
      // 検証用 DB にデータが無いときは、取得できる(空)ことだけを確認する
      if (rows.isEmpty) return;
      final again = await risk.findById(rows.first.id);
      expect(again?.values, rows.first.values);
    });

    test('実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する', () {
      final repos = qualityCommonRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['risk']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isTrue);
        expect(r.definition.fields.every((f) => f.readOnly), isTrue);
        expect(() => r.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
        expect(() => r.remove('x'), throwsUnsupportedError);
      }
    });
  });
}
