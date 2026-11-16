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
  String field(String entityKey, String fieldKey) =>
      fieldKey == 'reserve' ? '引当予約' : '$entityKey.$fieldKey';
  @override
  String reverse(String entityKey, String reverseEntityKey) => '';
}

const _stock = EntityDefinition(
  key: 'stock',
  viewOnly: true,
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(key: 'item'),
  ],
  rowActions: [
    RowAction(
      key: 'reserve',
      target: 'rez',
      initialValues: {'stock': RowAction.idSource, 'item': 'item'},
    ),
  ],
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

void main() {
  testWidgets('行のボタンを押すと、行の値を初期値にした指定が渡される', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final catalog = EntityCatalog()
      ..register(
        InMemoryEntityRepository(_stock, [
          const EntityRecord(id: 's1', values: {'code': 'S1', 'item': 'A'}),
          const EntityRecord(id: 's2', values: {'code': 'S2', 'item': 'B'}),
        ]),
      );
    RowAction? got;
    Map<String, String>? initial;
    await tester.pumpWidget(
      _host(
        EntityListPage(
          entityKey: 'stock',
          scope: EntityScope(
            catalog: catalog,
            labels: _Labels(),
            strings: EntityScreenLocale.ja.buildSync(),
          ),
          showCreate: false,
          onOpen: (r) async {},
          onCreate: () async {},
          onAction: (a, r) async {
            got = a;
            initial = a.initialValuesOf(r);
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('引当予約'), findsWidgets);
    await tester.tap(find.byKey(const ValueKey('action:reserve:s2')));
    await tester.pumpAndSettle();
    expect(got?.target, 'rez');
    expect(initial, {'stock': 's2', 'item': 'B'});
  });

  test('onAction が無いときは、ボタンの列を出さない(toJson にも指定が出る)', () {
    expect(_stock.toJson()['rowActions'], [
      {
        'key': 'reserve',
        'target': 'rez',
        'initialValues': {'stock': 'id', 'item': 'item'},
      },
    ]);
  });

  testWidgets('whenAny を指定したボタンは、どれかの真偽がオンの行にだけ出る', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    const def = EntityDefinition(
      key: 'open',
      viewOnly: true,
      fields: [
        FieldDefinition(key: 'code'),
        FieldDefinition(key: 'is_a', kind: FieldKind.flag),
        FieldDefinition(key: 'is_b', kind: FieldKind.flag),
      ],
      rowActions: [
        RowAction(
          key: 'reserve',
          target: 'rez',
          initialValues: {'x': RowAction.idSource},
          whenAny: ['is_a'],
        ),
      ],
    );
    final catalog = EntityCatalog()
      ..register(
        InMemoryEntityRepository(def, [
          const EntityRecord(
            id: 'r1',
            values: {'code': 'R1', 'is_a': flagOn, 'is_b': ''},
          ),
          const EntityRecord(
            id: 'r2',
            values: {'code': 'R2', 'is_a': '', 'is_b': flagOn},
          ),
        ]),
      );
    await tester.pumpWidget(
      _host(
        EntityListPage(
          entityKey: 'open',
          scope: EntityScope(
            catalog: catalog,
            labels: _Labels(),
            strings: EntityScreenLocale.ja.buildSync(),
          ),
          showCreate: false,
          onOpen: (r) async {},
          onCreate: () async {},
          onAction: (a, r) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('action:reserve:r1')), findsOneWidget);
    expect(find.byKey(const ValueKey('action:reserve:r2')), findsNothing);
    expect(def.rowActions.single.toJson()['whenAny'], ['is_a']);
  });
}
