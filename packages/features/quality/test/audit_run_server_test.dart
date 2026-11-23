import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;
import 'package:quality/quality.dart';

/// 監査の実施の通信テスト(検証用サーバー。読み取りだけ)。画面のテストとは別のファイルにする(Flutter のテスト環境は通信を拒否するため)。
/// ビュー `v_audit_assignment`・関数 `audit_notice` が DB に適用済みで、スキーマと生成モデルが合っていることの確認(合っていないと失敗する)。
/// 書き込み(開始・終了・異常の登録・計画の登録)は、共有の DB にデータを残さないため、SQL のテスト(`tools/docker/postgresql/test`。ROLLBACK)で確認する。
void main() {
  serverTest('検証用サーバー(読み取りだけ): 自分の監査・監査の通知・計画の選択肢を読める', (server) async {
    final client = server.provider.client;
    final plan = GraphqlAuditPlanGateway(client);
    final staff = await plan.staff();
    expect(staff, isNotEmpty, reason: '担当者(info_staff)が無い');
    final standards = await plan.standards();
    for (final o in standards) {
      expect(o.id, isNotEmpty);
    }

    // どの担当者でも、ビューを読める(監査員でなければ空)
    for (final s in staff.take(3)) {
      final run = GraphqlAuditRunGateway(client, auditUser: () async => AuditUser(staffId: s.id, staffHistoryId: ''));
      final mine = await run.myAssignments();
      for (final a in mine) {
        // 状態は、ビューの boolean(同時に 2 つ以上が真にならない)
        expect([a.isPlanned, a.isInProgress, a.isDone].where((b) => b).length, 1, reason: a.id);
        expect(a.statusLabel, isNotEmpty);
        // 項目も読める
        final items = await run.items(a.id);
        expect(items.length >= a.answeredCount, isTrue);
        expect(a.itemCount, items.length);
      }
    }

    // audit_notice(STABLE の関数。Query)を、呼べる(JWT の担当者の通知。0 件でもよい)
    final notice = GraphqlAuditNoticeSource(client, auditUser: () async => const AuditUser(staffId: 'x', staffHistoryId: ''));
    final notices = await notice.notices(daysBefore: 3650);
    for (final n in notices) {
      expect(n.detailId, isNotEmpty);
    }
  });
}
