import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system/system.dart';
import 'package:system/src/entities/system_definitions.dart';
import 'package:system/src/entities/system_seeds.dart';

void main() {
  const module = SystemModule();

  test('台帳を持つ実体のルートがある(子の台帳は編集だけ)', () {
    expect(module.entityKeys, ['unit']);
    expect(module.routes, isNotEmpty);
  });

  test('すべての実体に、台帳・編集のパスが対応する', () {
    for (final d in systemDefinitions) {
      expect(
        module.locationOf(EntityEditDestination(d.key)),
        isNotNull,
        reason: d.key,
      );
      if (d.owner == null) {
        expect(module.locationOf(EntityListDestination(d.key)), isNotNull);
      }
    }
    expect(module.locationOf(const EntityListDestination('unknown')), isNull);
  });

  test('サンプルが定義に合っている(必須・形式・選択肢・親子)', () async {
    for (final d in systemDefinitions) {
      final repo = InMemoryEntityRepository(d);
      for (final r in systemSeeds[d.key] ?? const <EntityRecord>[]) {
        // 検証だけを確かめる(参照先の存在は下のテストで確かめる)
        await repo.save(EntityRecord(id: r.id, values: r.values, parentId: r.parentId));
      }
    }
  });

  test('同じプロジェクト内の参照と親子が、サンプルの id に解決する', () {
    final ids = {
      for (final d in systemDefinitions)
        d.key: {for (final r in systemSeeds[d.key] ?? const <EntityRecord>[]) r.id},
    };
    for (final d in systemDefinitions) {
      for (final r in systemSeeds[d.key] ?? const <EntityRecord>[]) {
        final parentEntity = d.isTree ? d.key : d.owner;
        if (r.parentId != null && ids.containsKey(parentEntity)) {
          expect(ids[parentEntity], contains(r.parentId), reason: '${d.key} ${r.id} の親');
        }
        for (final f in d.fields) {
          final target = f.reference;
          final value = r.valueOf(f.key);
          if (target != null && value.isNotEmpty && ids.containsKey(target)) {
            expect(ids[target], contains(value), reason: '${d.key}.${f.key}');
          }
        }
      }
    }
  });
}
