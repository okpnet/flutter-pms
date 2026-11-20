import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:work_record/work_record.dart';

/// 実績登録の取得元(GraphQL 版)の通信テスト(検証用サーバー。読み取りだけ)。
/// 開始・終了(DB 関数)の登録は、DB の検査(`tools/docker/postgresql/test/20261120_0001_register_tests.sql`)で確かめる
/// (GraphQL からの登録は、実績・ロットが残るため、このテストでは行わない)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  serverTest('生産計画・工程計画明細・実績を読み込み、開始の既定値(担当者・コンテナの候補・残り)を引ける', (server) async {
    final gateway = GraphqlWorkRegisterGateway(server.provider.client);
    final plans = await gateway.plans();
    expect(plans, isNotEmpty, reason: '検証用 DB に生産計画がある');
    final plan = plans.firstWhere((p) => p.steps.isNotEmpty);
    expect(plan.planNo, isNotEmpty);
    expect(plan.quantity, greaterThan(0));
    // 工程順に並ぶ
    final seq = [for (final s in plan.steps) s.sequence];
    expect([...seq]..sort(), seq);
    for (final s in plan.steps) {
      expect(s.processName, isNotNull);
    }

    final step = plan.steps.first;
    final defaults = await gateway.startDefaults(step.id);
    expect(defaults.staffs, isNotEmpty);
    expect(defaults.defaultStaffId, isNotNull);
    expect(defaults.remaining, greaterThanOrEqualTo(0));
    // 候補は、取り出せるものが先
    final flags = [for (final c in defaults.containers) c.available];
    expect(flags, [...flags]..sort((a, b) => a == b ? 0 : (a ? -1 : 1)));
    for (final c in defaults.containers.where((c) => !c.available)) {
      expect(c.unavailableReason, isNotEmpty);
    }
    // 検索で絞れる
    if (defaults.containers.isNotEmpty) {
      final first = defaults.containers.first;
      final hit = await gateway.containers(step.id, query: first.name);
      expect(hit.any((c) => c.id == first.id), isTrue);
    }
  });

  serverTest('実施中の実績が無い工程の終了の前提は、失敗(実施中の実績が無い)', (server) async {
    final gateway = GraphqlWorkRegisterGateway(server.provider.client);
    final plans = await gateway.plans();
    final idle = [
      for (final p in plans)
        for (final s in p.steps)
          if (!s.inProgress) s,
    ];
    if (idle.isEmpty) return;
    await expectLater(
      gateway.finishContext(idle.first.id),
      throwsA(anything),
    );
  });
}
