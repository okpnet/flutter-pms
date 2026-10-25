import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

class _Labels implements EntityLabels {
  @override
  String entity(String entityKey) => entityKey;
  @override
  String field(String entityKey, String fieldKey) => '$entityKey.$fieldKey';
  @override
  String reverse(String entityKey, String reverseEntityKey) => reverseEntityKey;
}

const _item = EntityDefinition(
  key: 'item',
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(key: 'name'),
  ],
);

const _equipment = EntityDefinition(
  key: 'equipment',
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(
      key: 'item',
      kind: FieldKind.reference,
      reference: 'item',
      picker: true,
    ),
  ],
);

EntityCatalog _catalog() => EntityCatalog()
  ..register(
    InMemoryEntityRepository(_item, [
      EntityRecord(id: 'i1', values: {'code': 'I1', 'name': 'ブラケット'}),
      EntityRecord(id: 'i2', values: {'code': 'I2', 'name': 'シャフト'}),
    ]),
  )
  ..register(
    InMemoryEntityRepository(_equipment, [
      EntityRecord(id: 'e1', values: {'code': 'E1', 'item': 'i1'}),
    ]),
  );

Widget _host(Widget child) => ProviderScope(
  overrides: [
    themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
  ],
  child: Consumer(
    builder: (context, ref, _) =>
        MaterialApp(theme: ref.watch(lightThemeProvider), home: child),
  ),
);

EntityScope _scope(EntityCatalog catalog) => EntityScope(
  catalog: catalog,
  labels: _Labels(),
  strings: EntityScreenLocale.ja.buildSync(),
);

void main() {
  pickerLabelTests();
  testWidgets('選択方式の参照は、選んだ 1 件の表示名と選択ボタンを出し、結果で置き換える', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final asked = <String>[];
    await tester.pumpWidget(
      _host(
        EntityEditPage(
          entityKey: 'equipment',
          id: 'e1',
          scope: _scope(_catalog()),
          onOpenChild: (_, _, _) async {},
          onPick: (key) async {
            asked.add(key);
            return 'i2';
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('I1 ブラケット'), findsOneWidget);

    await tester.tap(find.text('選択'));
    await tester.pumpAndSettle();
    expect(asked, ['item']);
    expect(find.text('I2 シャフト'), findsOneWidget);

    await tester.tap(find.text('保存'));
    await tester.pumpAndSettle();
    final saved = await _catalog().repository('equipment')!.findById('e1');
    expect(saved, isNotNull); // 別のカタログだが、保存でエラーが出ないこと
    expect(find.text('必須です'), findsNothing);
  });

  testWidgets('選択画面(新規なし)は、行を選ぶとコールバックが呼ばれる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    String? picked;
    await tester.pumpWidget(
      _host(
        EntityListPage(
          entityKey: 'item',
          scope: _scope(_catalog()),
          showCreate: false,
          onOpen: (r) async => picked = r.id,
          onCreate: () async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.add), findsNothing);
    // 行の操作は、同じ行の2回のタップ(ダブルクリック)
    await tester.tap(find.text('シャフト'));
    await tester.pump(const Duration(milliseconds: 50));
    await tester.tap(find.text('シャフト'));
    await tester.pumpAndSettle();
    expect(picked, 'i2');
  });
}

void pickerLabelTests() {
  test('名称を参照先から借りる実体は、コード + 参照先の表示で選択肢になる', () async {
    final options = await _catalog().options('equipment');
    expect(options.map((o) => o.label), ['E1 I1 ブラケット']);
  });
}
