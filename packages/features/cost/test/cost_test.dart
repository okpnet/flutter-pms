import 'package:cost/cost.dart';
import 'package:cost/src/entities/cost_definitions.dart';
import 'package:cost/src/entities/cost_seeds.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const module = CostModule();

  test('台帳を持つ実体のルートがあり、すべて読み取り専用', () {
    expect(module.entityKeys, ['costunit', 'costvaluation', 'costlot', 'costwork']);
    expect(module.routes, isNotEmpty);
    for (final d in costDefinitions) {
      expect(d.viewOnly, isTrue, reason: d.key);
      expect(module.locationOf(EntityListDestination(d.key)), isNotNull, reason: d.key);
      for (final f in d.fields) {
        expect(f.readOnly, isTrue, reason: '${d.key}.${f.key}');
        expect(f.required, isFalse, reason: '${d.key}.${f.key}');
      }
    }
    expect(module.locationOf(const EntityListDestination('unknown')), isNull);
  });

  test('サンプルが定義に合っている', () async {
    for (final d in costDefinitions) {
      final repo = InMemoryEntityRepository(d);
      for (final r in costSeeds[d.key] ?? const <EntityRecord>[]) {
        await repo.save(EntityRecord(id: r.id, values: r.values));
      }
      expect(costSeeds[d.key], isNotEmpty, reason: d.key);
    }
  });

  testWidgets('メニュー: 標準原価 = 品目のグループ、在庫評価額・ロットの評価額 = 作業実績のグループ', (tester) async {
    late List<MenuEntry> entries;
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: Consumer(
            builder: (context, ref, _) {
              entries = module.menuEntries(ref);
              return const SizedBox();
            },
          ),
        ),
      ),
    );
    expect([for (final e in entries) (e.groupId, e.groupLabel, e.label)], [
      ('item', '品目', '標準原価の一覧'),
      ('work_record', '作業実績', '在庫評価額の一覧'),
      ('work_record', '作業実績', 'ロットの評価額'),
      ('work_record', '作業実績', '実績の原価'),
    ]);
    expect([for (final e in entries) (e.destination as EntityListDestination).entityKey], ['costunit', 'costvaluation', 'costlot', 'costwork']);
  });
}
