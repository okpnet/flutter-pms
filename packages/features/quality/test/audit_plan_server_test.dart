import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;
import 'package:quality/quality.dart';
import 'package:quality_model/quality_model.dart';

/// 監査計画の登録 → 実施(開始・終了)の通信テスト(検証用サーバー。**書き込みあり**)。画面のテストとは別のファイルにする。
/// 管理者の資格情報で実行する(`PMS_TEST_USER`・`PMS_TEST_PASSWORD`)。
///
/// 作った監査標準・監査・監査実施詳細は、最後に論理削除する(`remove = true`)。チーム・監査員は、削除済みの監査実施詳細にひもづくだけで残る
/// (ビュー `v_audit_assignment` には出ない)。呼称・ラベル・文章の行も残る(共通関数の登録は、本体と別のトランザクションのため許容する)。
void main() {
  serverTest('変更する: 監査標準・計画を登録し、実施(開始・終了)まで通して確認し、最後に論理削除する', (server) async {
    final client = server.provider.client;
    final staff = await GraphqlAuditPlanGateway(client).staff();
    if (staff.isEmpty) {
      markTestSkipped('担当者が無いため、中止した');
      return;
    }
    // 担当者は、DB の最初の担当者で行う(PocketBase のユーザーの app_user_id が、DB の担当者と合っているとは限らないため。更新者・責任者に明示する)
    final me = staff.first;
    final history = await client.query(
      QueryOptions(
        document: gql(r'query($id: UUID!) { allHistoryInfoStaffs(first: 1, orderBy: REVISION_DESC, filter: {infoStaffId: {equalTo: $id}}) { nodes { historyId } } }'),
        variables: {'id': me.id},
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final historyId = ((history.data?['allHistoryInfoStaffs'] as Map?)?['nodes'] as List?)?.firstOrNull?['historyId'] as String?;
    expect(historyId, isNotNull, reason: '担当者の履歴が無い');
    final user = AuditUser(staffId: me.id, staffHistoryId: historyId!);
    final plan = GraphqlAuditPlanGateway(client, auditUser: () async => user);
    final stamp = DateTime.now().millisecondsSinceEpoch;

    // 1. 監査標準(項目は無い)
    final stdRepo = qualityRepositories(client, auditUser: () async => user).firstWhere((r) => r.definition.key == 'auditstd');
    final std = await stdRepo.save(EntityRecord(id: '', values: {'code': 'T$stamp', 'name': 'TEST-監査標準-$stamp', 'pronunciation': '', 'category': '1', 'detail': '', 'remarks': ''}));
    String? auditId;
    final detailIds = <String>[];
    try {
      expect(std.valueOf('name'), 'TEST-監査標準-$stamp');

      // 2. 計画の登録(DB の関数 audit_plan_register。1 トランザクション)
      final title = 'TEST-監査-$stamp';
      auditId = await plan.register(
        AuditPlanInput(
          title: title,
          details: 'テスト',
          standardId: std.id,
          lines: [AuditPlanLine(teamName: 'テストチーム', auditorIds: [me.id], scheduledAt: DateTime.now().add(const Duration(days: 1)))],
        ),
      );
      expect(auditId, isNotEmpty);

      // 3. 自分の監査に出る(ビュー v_audit_assignment)。状態は未着手
      final run = GraphqlAuditRunGateway(client, auditUser: () async => user);
      final mine = (await run.myAssignments()).where((a) => a.auditName == title).toList();
      expect(mine.length, 1);
      final a = mine.single;
      detailIds.add(a.id);
      expect(a.isPlanned, isTrue);
      expect(a.teamName, 'テストチーム');
      expect(a.title, '$title テストチーム');

      // 4. 開始(実施日が入る。項目は、監査標準に項目が無いので 0 件)→ 実施中
      await run.start(a.id);
      final started = (await run.assignment(a.id))!;
      expect(started.isInProgress, isTrue);
      expect(await run.items(a.id), isEmpty);

      // 5. 終了(結論つき)→ 完了。終了した監査は、もう一度終了できない
      await run.finish(a.id, conclusion: '指摘なし');
      final done = (await run.assignment(a.id))!;
      expect(done.isDone, isTrue);
      expect(done.conclusion, '指摘なし');
      await expectLater(run.finish(a.id, conclusion: ''), throwsA(isA<OperationException>()));
    } finally {
      // 後始末(論理削除)
      for (final d in detailIds) {
        await client.mutate(MutationOptions(document: documentNodeMutationAuditDetailPageRemove, variables: {'transAuditDetailsId': d, 'remove': true}, fetchPolicy: FetchPolicy.noCache));
      }
      if (auditId != null) {
        await client.mutate(MutationOptions(document: documentNodeMutationAuditPageRemove, variables: {'transAuditId': auditId, 'remove': true}, fetchPolicy: FetchPolicy.noCache));
      }
      await stdRepo.remove(std.id);
    }
  });

  serverTest('変更する: 部署・利害関係者を指定して計画を登録すると、監査に入る。指定なしでも登録できる(最後に論理削除する)', (server) async {
    final client = server.provider.client;
    final staff = await GraphqlAuditPlanGateway(client).staff();
    if (staff.isEmpty) {
      markTestSkipped('担当者が無いため、中止した');
      return;
    }
    final me = staff.first;
    Future<String?> firstId(String doc, String list, String key) async {
      final r = await client.query(QueryOptions(document: gql(doc), fetchPolicy: FetchPolicy.noCache));
      return ((r.data?[list] as Map?)?['nodes'] as List?)?.firstOrNull?[key] as String?;
    }

    final history = await firstId(
      'query { allHistoryInfoStaffs(first: 1, orderBy: REVISION_DESC, filter: {infoStaffId: {equalTo: "${me.id}"}}) { nodes { historyId } } }',
      'allHistoryInfoStaffs',
      'historyId',
    );
    expect(history, isNotNull, reason: '担当者の履歴が無い');
    final department = await firstId('query { allInfoDepartments(first: 1, filter: {remove: {equalTo: false}}) { nodes { infoDepartmentId } } }', 'allInfoDepartments', 'infoDepartmentId');
    final stakeholder = await firstId('query { allMstrStakeholders(first: 1, filter: {remove: {equalTo: false}}) { nodes { mstrStakeholderId } } }', 'allMstrStakeholders', 'mstrStakeholderId');
    if (department == null || stakeholder == null) {
      markTestSkipped('部署または利害関係者が無いため、中止した');
      return;
    }
    final user = AuditUser(staffId: me.id, staffHistoryId: history!);
    final plan = GraphqlAuditPlanGateway(client, auditUser: () async => user);
    final stamp = DateTime.now().millisecondsSinceEpoch;
    final stdRepo = qualityRepositories(client, auditUser: () async => user).firstWhere((r) => r.definition.key == 'auditstd');
    final std = await stdRepo.save(EntityRecord(id: '', values: {'code': 'U$stamp', 'name': 'TEST-監査標準B-$stamp', 'pronunciation': '', 'category': '1', 'detail': '', 'remarks': ''}));
    final auditIds = <String>[];
    try {
      Future<Map?> fetchAudit(String id) async {
        final r = await client.query(
          QueryOptions(
            document: gql('query { allTransAudits(filter: {transAuditId: {equalTo: "$id"}}) { nodes { infoDepartmentId mstrStakeholderId } } }'),
            fetchPolicy: FetchPolicy.noCache,
          ),
        );
        return ((r.data?['allTransAudits'] as Map?)?['nodes'] as List?)?.firstOrNull as Map?;
      }

      AuditPlanInput input(String title, {String? departmentId, String? stakeholderId}) => AuditPlanInput(
        title: title,
        details: 'テスト',
        standardId: std.id,
        departmentId: departmentId,
        stakeholderId: stakeholderId,
        lines: [AuditPlanLine(teamName: 'テストチーム', auditorIds: [me.id], scheduledAt: DateTime.now().add(const Duration(days: 1)))],
      );

      // 指定あり: 部署・利害関係者が trans_audit に入る
      final withIds = await plan.register(input('TEST-監査B1-$stamp', departmentId: department, stakeholderId: stakeholder));
      auditIds.add(withIds);
      final a = await fetchAudit(withIds);
      expect(a?['infoDepartmentId'], department);
      expect(a?['mstrStakeholderId'], stakeholder);

      // 指定なし: 登録でき、どちらも null
      final without = await plan.register(input('TEST-監査B2-$stamp'));
      auditIds.add(without);
      final b = await fetchAudit(without);
      expect(b?['infoDepartmentId'], isNull);
      expect(b?['mstrStakeholderId'], isNull);
    } finally {
      for (final id in auditIds) {
        await client.mutate(MutationOptions(document: documentNodeMutationAuditPageRemove, variables: {'transAuditId': id, 'remove': true}, fetchPolicy: FetchPolicy.noCache));
      }
      await stdRepo.remove(std.id);
    }
  });
}
