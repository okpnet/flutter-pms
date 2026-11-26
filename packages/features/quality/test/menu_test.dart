import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quality/quality.dart';

void main() {
  testWidgets('メニューは「運用と改善」の 1 グループ。異常 → 異常の登録 → 自分の監査 → 監査の計画の順で、監査チームは出さない', (tester) async {
    late List<MenuEntry> entries;
    await tester.pumpWidget(
      ProviderScope(
        child: Consumer(
          builder: (context, ref, _) {
            entries = const QualityModule().menuEntries(ref);
            return const SizedBox();
          },
        ),
      ),
    );
    expect(entries.map((e) => e.groupId).toSet(), {operationsMenuGroupId});
    expect(entries.map((e) => e.groupLabel).toSet(), {'運用と改善'});
    final kinds = [
      for (final e in entries)
        e.destination is EntityListDestination ? (e.destination as EntityListDestination).entityKey : e.destination.runtimeType.toString(),
    ];
    expect(kinds.take(4).toList(), ['complaint', 'ComplaintRegisterDestination', 'MyAuditsDestination', 'audit']);
    // 監査の計画は、台帳(監査)の 1 項目だけ(登録の別メニューは無い)
    expect(kinds.where((k) => k == 'audit').length, 1);
    expect(kinds, isNot(contains('AuditPlanDestination')));
    expect(entries[3].label, '監査の計画');
    expect(kinds, isNot(contains('auditteam')));
  });
}
