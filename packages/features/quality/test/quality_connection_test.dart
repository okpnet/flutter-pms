import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:quality/quality.dart';

/// 品質管理の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 品質管理の取得元(読み取り専用)', () {
    serverTest('苦情・監査・監査基準を、画面の値(題名・名称は言語コード ja)で取得できる', (server) async {
      final repos = qualityRepositories(server.provider.client);
      for (final key in ['complaint', 'audit', 'auditstd']) {
        final repo = repos.firstWhere((r) => r.definition.key == key);
        final rows = await repo.find(take: 50);
        // 検証用 DB にデータが無い実体は、取得できる(空)ことだけを確認する
        if (rows.isEmpty) continue;
        final again = await repo.findById(rows.first.id);
        expect(again?.values, rows.first.values, reason: key);
      }
    });

    test('実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する', () {
      final repos = qualityRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['complaint', 'audit', 'auditstd']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isTrue);
        expect(r.definition.fields.every((f) => f.readOnly), isTrue);
        expect(() => r.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
        expect(() => r.remove('x'), throwsUnsupportedError);
      }
    });
  });
}
