import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:production_plan/production_plan.dart';

/// 生産計画の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 生産計画の取得元(読み取り専用)', () {
    serverTest('資材計画の一覧と、その下の生産計画(停止・打ち切りを持つ)を取得できる', (server) async {
      final repos = productionPlanRepositories(server.provider.client);
      final resource = repos.firstWhere((r) => r.definition.key == 'resplan');
      final ops = repos.firstWhere((r) => r.definition.key == 'opsplan');
      final plans = await resource.find(take: 20);
      expect(plans, isNotEmpty);
      List<EntityRecord> rows = const [];
      for (final p in plans) {
        rows = await ops.findByParent(p.id);
        if (rows.isNotEmpty) break;
      }
      expect(rows, isNotEmpty, reason: '生産計画のある資材計画が無い');
      final o = rows.first;
      expect(o.parentId, isNotNull);
      for (final key in ['stop', 'discontinue', 'quantity', 'deadline']) {
        expect(o.values.containsKey(key), isTrue, reason: key);
      }
      final one = await ops.findById(o.id);
      expect(one?.values, o.values);
      final again = await resource.findById(plans.first.id);
      expect(again?.values, plans.first.values);
    });

    test('実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する', () async {
      final repos = productionPlanRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['resplan', 'opsplan']);
      for (final r in repos) {
        expect(r.definition.viewOnly, isTrue);
        expect(r.definition.fields.every((f) => f.readOnly), isTrue);
        expect(() => r.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
        expect(() => r.remove('x'), throwsUnsupportedError);
      }
    });
  });
}
