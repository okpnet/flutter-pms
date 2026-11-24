import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

/// 承認パターンの台帳と承認の段の通信テスト(検証用サーバー)。画面のテストとは別のファイルにする。
/// 「変更する」テストは、登録した承認パターン・段を、最後に論理削除する(管理者の資格情報で実行する。呼称の行は残る)。
void main() {
  serverTest('検証用サーバー(読み取りだけ): 承認パターンの台帳と選択肢を読める', (server) async {
    final repos = organizationRepositories(server.provider.client);
    final repo = repos.firstWhere((r) => r.definition.key == 'approvalpattern');
    final rows = await repo.find(take: 50);
    for (final r in rows) {
      expect(r.id, isNotEmpty);
    }
    final steps = GraphqlApprovalStepsGateway(server.provider.client);
    // 検証用 DB に部署・役職が無いことがある(読めることだけを確認する)
    await steps.departments();
    await steps.positions();
    if (rows.isNotEmpty) {
      final loaded = await steps.load(rows.first.id);
      final priorities = [for (final s in loaded) s.priority];
      expect(priorities, [...priorities]..sort());
    }
  });

  serverTest('変更する: 承認パターンと段を登録・並べ替え・削除する(最後に論理削除)', (server) async {
    final client = server.provider.client;
    // 更新者は、DB の最初の担当者で行う(PocketBase のユーザーの app_user_id が、DB の担当者と合っているとは限らないため)
    final staff = await client.query(QueryOptions(document: gql('query { allInfoStaffs(first: 1, filter: {remove: {equalTo: false}}) { nodes { infoStaffId } } }'), fetchPolicy: FetchPolicy.noCache));
    final staffId = ((staff.data?['allInfoStaffs'] as Map?)?['nodes'] as List?)?.firstOrNull?['infoStaffId'] as String?;
    expect(staffId, isNotNull, reason: '担当者が無い');
    final history = await client.query(QueryOptions(document: gql('query { allHistoryInfoStaffs(first: 1, orderBy: REVISION_DESC, filter: {infoStaffId: {equalTo: "$staffId"}}) { nodes { historyId } } }'), fetchPolicy: FetchPolicy.noCache));
    final historyId = ((history.data?['allHistoryInfoStaffs'] as Map?)?['nodes'] as List?)?.firstOrNull?['historyId'] as String?;
    expect(historyId, isNotNull, reason: '担当者の履歴が無い');
    final user = AuditUser(staffId: staffId!, staffHistoryId: historyId!);
    final repo = organizationRepositories(client, auditUser: () async => user).firstWhere((r) => r.definition.key == 'approvalpattern');
    final steps = GraphqlApprovalStepsGateway(client, auditUser: () async => user);
    final departments = await steps.departments();
    final positions = await steps.positions();
    if (positions.length < 2) {
      markTestSkipped('役職が 2 件未満のため、中止した');
      return;
    }
    final name = 'TEST-承認パターン-${DateTime.now().millisecondsSinceEpoch}';
    final created = await repo.save(EntityRecord(id: '', values: {'name': name, 'pronunciation': 'てすと', 'remarks': 'テスト'}));
    try {
      expect(created.valueOf('name'), name);
      expect(created.valueOf('remarks'), 'テスト');

      // 名称・備考の更新
      final renamed = await repo.save(
        EntityRecord(id: created.id, values: {'name': '$name-2', 'pronunciation': 'てすと', 'remarks': ''}),
      );
      expect(renamed.valueOf('name'), '$name-2');
      expect(renamed.valueOf('remarks'), '');

      // 段の追加(最後の順位)・並べ替え
      await steps.add(created.id, departmentId: departments.first.id, positionId: positions[0].id, priority: 1);
      await steps.add(created.id, departmentId: null, positionId: positions[1].id, priority: 2);
      var loaded = await steps.load(created.id);
      expect(loaded.length, 2);
      expect([for (final s in loaded) s.positionId], [positions[0].id, positions[1].id]);
      expect(loaded.first.name, isNotEmpty);

      await steps.reorder([loaded[1], loaded[0]]);
      loaded = await steps.load(created.id);
      expect([for (final s in loaded) s.positionId], [positions[1].id, positions[0].id]);
      expect([for (final s in loaded) s.priority], [1, 2]);

      // 部署・役職の変更
      await steps.update(loaded.first, departmentId: departments.first.id, positionId: positions[0].id);
      loaded = await steps.load(created.id);
      expect(loaded.first.departmentId, departments.first.id);
      expect(loaded.first.positionId, positions[0].id);

      // 段の削除(論理削除)
      await steps.remove(loaded.first);
      expect((await steps.load(created.id)).length, 1);

      // 名称が空のときは検証エラー
      await expectLater(
        repo.save(EntityRecord(id: created.id, values: {'name': '', 'pronunciation': '', 'remarks': ''})),
        throwsA(isA<EntityValidationException>()),
      );
    } finally {
      for (final s in await steps.load(created.id)) {
        await steps.remove(s);
      }
      await repo.remove(created.id);
    }
    expect(await repo.findById(created.id), isNull);
  });
}
