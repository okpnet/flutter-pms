import 'package:cost/cost.dart';
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';

/// 原価の通信テスト(検証用サーバー。読み取りだけ)。3 つのビューを読み、DB のビューの不変条件を確認する。
void main() {
  serverTest('検証用サーバー(読み取りだけ): 標準原価・在庫評価額・ロットの評価額を読める。評価しないロットは評価額 0', (server) async {
    final repos = {for (final r in costRepositories(server.provider.client)) r.definition.key: r};

    final units = await repos['costunit']!.find(take: 200);
    for (final u in units) {
      expect(u.id, isNotEmpty);
      // 標準原価 = 購入品 + 生産コスト + 下位の部品(DB のビューの値)
      final sum = num.parse(u.valueOf('purchase_cost')) + num.parse(u.valueOf('production_cost')) + num.parse(u.valueOf('component_cost'));
      expect(num.parse(u.valueOf('unit_cost')), closeTo(sum, 0.01), reason: u.id);
    }

    final valuations = await repos['costvaluation']!.find(take: 200);
    for (final v in valuations) {
      // 現在庫 = 評価の対象 + 社外の所有物
      expect(num.parse(v.valueOf('quantity')), num.parse(v.valueOf('evaluated_quantity')) + num.parse(v.valueOf('external_quantity')), reason: v.id);
    }

    final lots = await repos['costlot']!.find(take: 200);
    for (final l in lots) {
      // 評価の対象でない(社外の所有物)ロットは、評価額 0
      if (l.valueOf('evaluated').isEmpty) expect(l.valueOf('amount'), '0', reason: l.id);
    }
    // 実績の原価 = 材料 + 工程。作ったロットが無いときの単価は空
    final works = await repos['costwork']!.find(take: 200);
    for (final w in works) {
      final total = num.parse(w.valueOf('material_amount')) + num.parse(w.valueOf('process_cost'));
      expect(num.parse(w.valueOf('total_cost')), closeTo(total, 0.01), reason: w.id);
      if (num.parse(w.valueOf('produced_quantity')) == 0) expect(w.valueOf('unit_cost'), '', reason: w.id);
    }
    if (units.isNotEmpty) {
      expect((await repos['costunit']!.findById(units.first.id))?.id, units.first.id);
    }
  });
}
