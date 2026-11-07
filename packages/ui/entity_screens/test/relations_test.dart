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
  String reverse(String entityKey, String reverseEntityKey) => '';
}

// 在庫(品目・出庫可能数)、購買注文明細(品目)、生産計画(品目)、引当予約。
const _stock = EntityDefinition(
  key: 'stock',
  viewOnly: true,
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(key: 'item'),
    FieldDefinition(key: 'avail', kind: FieldKind.number, readOnly: true),
  ],
);
const _pur = EntityDefinition(
  key: 'pur',
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(key: 'item'),
  ],
);
// 生産計画の品目は、所有する親(資材計画)にある
const _res = EntityDefinition(
  key: 'res',
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(key: 'item'),
  ],
);
const _plan = EntityDefinition(
  key: 'plan',
  owner: 'res',
  fields: [FieldDefinition(key: 'code')],
);
const _rez = EntityDefinition(
  key: 'rez',
  fields: [
    FieldDefinition(
      key: 'pur',
      kind: FieldKind.reference,
      required: false,
      reference: 'pur',
      exclusiveWith: 'plan',
    ),
    FieldDefinition(
      key: 'plan',
      kind: FieldKind.reference,
      required: false,
      reference: 'plan',
      exclusiveWith: 'pur',
    ),
    FieldDefinition(
      key: 'stock',
      kind: FieldKind.reference,
      reference: 'stock',
      optionFilters: [
        OptionFilter(source: 'pur', sourceField: 'item', targetField: 'item'),
        OptionFilter(
          source: 'plan',
          sourceField: 'parent.item',
          targetField: 'item',
        ),
      ],
    ),
    FieldDefinition(
      key: 'qty',
      kind: FieldKind.number,
      gt: 0,
      maxFrom: [LimitSource(source: 'stock', field: 'avail')],
    ),
  ],
);

EntityRecord _r(String id, Map<String, String> v) =>
    EntityRecord(id: id, values: v);

EntityCatalog _catalog() => EntityCatalog()
  ..register(
    InMemoryEntityRepository(_stock, [
      _r('s1', {'code': 'S1', 'item': 'A', 'avail': '30'}),
      _r('s2', {'code': 'S2', 'item': 'A', 'avail': '5'}),
      _r('s3', {'code': 'S3', 'item': 'B', 'avail': '50'}),
    ]),
  )
  ..register(
    InMemoryEntityRepository(_pur, [
      _r('p1', {'code': 'P1', 'item': 'A'}),
    ]),
  )
  ..register(
    InMemoryEntityRepository(_plan, [
      EntityRecord(id: 'l1', values: {'code': 'L1'}, parentId: 'r1'),
    ]),
  )
  ..register(
    InMemoryEntityRepository(_res, [
      _r('r1', {'code': 'R1', 'item': 'B'}),
    ]),
  )
  ..register(InMemoryEntityRepository(_rez));

Widget _host(Widget child) => ProviderScope(
  overrides: [
    themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
  ],
  child: Consumer(
    builder: (context, ref, _) =>
        MaterialApp(theme: ref.watch(lightThemeProvider), home: child),
  ),
);

Future<void> _pump(WidgetTester tester, EntityCatalog catalog) async {
  await tester.binding.setSurfaceSize(const Size(900, 1400));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    _host(
      EntityEditPage(
        entityKey: 'rez',
        scope: EntityScope(
          catalog: catalog,
          labels: _Labels(),
          strings: EntityScreenLocale.ja.buildSync(),
        ),
        onOpenChild: (_, _, _) async {},
      ),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> _choose(WidgetTester tester, String field, String label) async {
  await tester.tap(
    find.byWidgetPredicate(
      (w) =>
          w is DropdownButtonFormField<String> &&
          w.key.toString().contains("'$field:"),
    ),
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text(label).last);
  await tester.pumpAndSettle();
}

bool _enabled(WidgetTester tester, String field) {
  final w = tester.widget<DropdownButtonFormField<String>>(
    find.byWidgetPredicate(
      (w) =>
          w is DropdownButtonFormField<String> &&
          w.key.toString().contains("'$field:"),
    ),
  );
  return w.onChanged != null;
}

void main() {
  group('項目の関係(段階2)', () {
    testWidgets('排他: 購買注文明細を選ぶと生産計画は選べず、保存にはどちらかが要る', (tester) async {
      await _pump(tester, _catalog());
      await tester.tap(find.text('保存'));
      await tester.pumpAndSettle();
      expect(find.text('必須です'), findsWidgets);

      await _choose(tester, 'pur', 'P1 A');
      expect(_enabled(tester, 'plan'), isFalse);
      expect(_enabled(tester, 'pur'), isTrue);
    });

    testWidgets('選択肢の絞り込み: 選んだ購買注文明細の品目の在庫だけが出る', (tester) async {
      await _pump(tester, _catalog());
      await _choose(tester, 'pur', 'P1 A');
      await tester.tap(
        find.byWidgetPredicate(
          (w) =>
              w is DropdownButtonFormField<String> &&
              w.key.toString().contains("'stock:"),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('S1 A'), findsWidgets);
      expect(find.text('S2 A'), findsWidgets);
      expect(find.text('S3 B'), findsNothing);
    });

    testWidgets('親をたどる絞り込み: 生産計画は、所有する親の品目の在庫だけが出る', (tester) async {
      await _pump(tester, _catalog());
      await _choose(tester, 'plan', 'L1');
      await tester.tap(
        find.byWidgetPredicate(
          (w) =>
              w is DropdownButtonFormField<String> &&
              w.key.toString().contains("'stock:"),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('S3 B'), findsWidgets);
      expect(find.text('S1 A'), findsNothing);
    });

    testWidgets('上限: 数量は選んだ在庫の出庫可能数まで', (tester) async {
      await _pump(tester, _catalog());
      await _choose(tester, 'pur', 'P1 A');
      await _choose(tester, 'stock', 'S2 A');
      await tester.enterText(find.widgetWithText(TextField, 'rez.qty *'), '6');
      await tester.tap(find.text('保存'));
      await tester.pumpAndSettle();
      expect(find.text('5 以下で入力してください'), findsOneWidget);

      await tester.enterText(find.widgetWithText(TextField, 'rez.qty *'), '5');
      await tester.tap(find.text('保存'));
      await tester.pumpAndSettle();
      expect(find.text('5 以下で入力してください'), findsNothing);
    });
  });

  test('toJson に関係の指定が含まれる', () {
    final j = _rez.fields[2].toJson();
    expect((j['optionFilters'] as List).length, 2);
    expect(_rez.fields[0].toJson()['exclusiveWith'], 'plan');
    expect((_rez.fields[3].toJson()['maxFrom'] as List).first, {
      'source': 'stock',
      'field': 'avail',
    });
  });
}
