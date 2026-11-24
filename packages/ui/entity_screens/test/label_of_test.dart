import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('名称を持たない実体の表示は、最初の参照先の表示を先頭に付ける(受入実績 → 発注明細 → 品目)', () async {
    const item = EntityDefinition(key: 'item', fields: [FieldDefinition(key: 'code'), FieldDefinition(key: 'name')]);
    const detail = EntityDefinition(
      key: 'detail',
      fields: [FieldDefinition(key: 'item_id', kind: FieldKind.reference, reference: 'item'), FieldDefinition(key: 'qty', kind: FieldKind.number)],
    );
    const rec = EntityDefinition(
      key: 'rec',
      fields: [
        FieldDefinition(key: 'detail_id', kind: FieldKind.reference, reference: 'detail'),
        FieldDefinition(key: 'quantity', kind: FieldKind.number, required: false),
      ],
    );
    final catalog = EntityCatalog()
      ..register(InMemoryEntityRepository(item, [EntityRecord(id: 'i1', values: {'code': 'I-1', 'name': 'ユニットA'})]))
      ..register(InMemoryEntityRepository(detail, [EntityRecord(id: 'd1', values: {'item_id': 'i1', 'qty': '10'})]))
      ..register(InMemoryEntityRepository(rec, [EntityRecord(id: 'r1', values: {'detail_id': 'd1', 'quantity': '4'})]));
    final r = (await catalog.repository('rec')!.findById('r1'))!;
    expect(await catalog.labelOf(rec, r), 'I-1 ユニットA 10 4');
    // 参照先が無い・空のときは、これまでの表示
    expect(await catalog.labelOf(rec, const EntityRecord(id: 'r2', values: {'quantity': '4'})), '4');
  });
}
