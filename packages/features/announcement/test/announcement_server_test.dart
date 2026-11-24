import 'package:announcement/announcement.dart';
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

/// 通知の通信テスト(検証用サーバー。**書き込みあり**)。管理者の資格情報で実行する(`PMS_TEST_USER`・`PMS_TEST_PASSWORD`)。
/// DB の関数 `announcement_register` で、DB の最初の担当者宛てに通知を 1 件作り、一覧で読み、既読にして、最後に論理削除する
/// (題名・本文の行(`trans_label`・`trans_text`)は残る。共通関数の登録と同じく許容する)。
void main() {
  serverTest('変更する: 通知を登録 → 一覧(題名・本文は言語別の値のまま)→ 既読 → 論理削除。監査の予定の通知づくりは呼べる', (server) async {
    final client = server.provider.client;
    Future<Map<String, dynamic>> run(String doc, [Map<String, dynamic> variables = const {}, bool mutation = false]) async {
      final r = mutation
          ? await client.mutate(MutationOptions(document: gql(doc), variables: variables, fetchPolicy: FetchPolicy.noCache))
          : await client.query(QueryOptions(document: gql(doc), variables: variables, fetchPolicy: FetchPolicy.noCache));
      if (r.exception != null) throw r.exception!;
      return r.data ?? const {};
    }

    // 担当者は、DB の最初の担当者(PocketBase のユーザーの app_user_id が、DB の担当者と合っているとは限らないため)
    final staffData = await run('query { allInfoStaffs(first: 1, filter: {remove: {equalTo: false}}) { nodes { infoStaffId } } }');
    final staffId = (((staffData['allInfoStaffs'] as Map)['nodes'] as List).firstOrNull as Map?)?['infoStaffId'] as String?;
    if (staffId == null) {
      markTestSkipped('担当者が無いため、中止した');
      return;
    }
    final historyData = await run(
      'query(\$id: UUID!) { allHistoryInfoStaffs(first: 1, orderBy: REVISION_DESC, filter: {infoStaffId: {equalTo: \$id}}) { nodes { historyId } } }',
      {'id': staffId},
    );
    final historyId = (((historyData['allHistoryInfoStaffs'] as Map)['nodes'] as List).first as Map)['historyId'] as String;
    final user = AuditUser(staffId: staffId, staffHistoryId: historyId);
    final gateway = GraphqlAnnouncementGateway(client, auditUser: () async => user);

    // 監査の予定の通知づくり(冪等)。件数は 0 以上で、もう一度呼んでも増えない
    final first = await gateway.notifyDue();
    expect(first, greaterThanOrEqualTo(0));
    expect(await gateway.notifyDue(), 0);

    final stamp = DateTime.now().millisecondsSinceEpoch;
    final title = 'TEST-通知-$stamp';
    await run(
      r'mutation($to: [UUID], $titles: JSON, $messages: JSON, $by: UUID, $byHistory: UUID) { announcementRegister(input: {pToStaffIds: $to, pCategory: "audit", pTitles: $titles, pMessages: $messages, pStaffId: $by, pStaffHistoryId: $byHistory}) { integer } }',
      {
        'to': [staffId],
        'titles': '{"ja":"$title"}',
        'messages': '{"ja":"本文 $stamp"}',
        'by': staffId,
        'byHistory': historyId,
      },
      true,
    );

    String? id;
    try {
      final rows = await gateway.mine();
      final mine = rows.where((a) => a.title == title).toList();
      expect(mine.length, 1);
      id = mine.single.id;
      expect(mine.single.message, '本文 $stamp');
      expect(mine.single.isRead, isFalse);

      await gateway.markRead(id);
      final after = (await gateway.mine()).firstWhere((a) => a.id == id);
      expect(after.isRead, isTrue);
    } finally {
      if (id != null) {
        await run(
          r'mutation($id: UUID!) { updateTransAnnouncementByTransAnnouncementId(input: {transAnnouncementId: $id, transAnnouncementPatch: {remove: true}}) { transAnnouncement { transAnnouncementId } } }',
          {'id': id},
          true,
        );
      }
    }
  });
}
