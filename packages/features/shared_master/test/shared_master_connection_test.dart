import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:shared_master/shared_master.dart';

/// 共有マスタの取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 共有マスタの取得元(読み取り専用)', () {
    serverTest('利害関係者の一覧を、画面の値(名称は言語コード ja、役割は はい/いいえ)で取得できる', (server) async {
      final stakeholder = sharedMasterRepositories(server.provider.client).single;
      final rows = await stakeholder.find(take: 20);
      expect(rows, isNotEmpty);
      expect(rows.first.valueOf('code'), isNotEmpty);
      expect(rows.any((r) => r.valueOf('name').isNotEmpty), isTrue);
      for (final key in ['is_customer', 'is_supplier', 'is_logistics']) {
        expect(rows.first.values.containsKey(key), isTrue, reason: key);
      }
      final again = await stakeholder.findById(rows.first.id);
      expect(again?.values, rows.first.values);
    });

    test('実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する', () {
      final repos = sharedMasterRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['stakeholder']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isTrue);
        expect(r.definition.fields.every((f) => f.readOnly), isTrue);
        expect(() => r.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
        expect(() => r.remove('x'), throwsUnsupportedError);
      }
    });
  });
}
