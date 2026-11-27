import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

// 仮のレート(FieldDefinition.provisionalKey): 一部の行だけ「(仮)」を付ける。台帳の合計は、仮の行があれば「(一部仮)」。

class _Labels implements EntityLabels {
  @override
  String entity(String entityKey) => entityKey;
  @override
  String field(String entityKey, String fieldKey) => '$entityKey.$fieldKey';
  @override
  String reverse(String entityKey, String reverseEntityKey) => reverseEntityKey;
}

const _item = EntityDefinition(
  key: 'trade',
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(
      key: 'rate_provisional',
      kind: FieldKind.flag,
      required: false,
      readOnly: true,
    ),
    FieldDefinition(
      key: 'amount_base',
      kind: FieldKind.number,
      required: false,
      readOnly: true,
      money: true,
      total: true,
      provisionalKey: 'rate_provisional',
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

Future<void> _pumpList(
  WidgetTester tester,
  List<EntityRecord> rows, {
  String lang = 'ja',
}) async {
  await tester.binding.setSurfaceSize(const Size(1200, 900));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  final catalog = EntityCatalog()
    ..register(InMemoryEntityRepository(_item, rows));
  final scope = EntityScope(
    catalog: catalog,
    labels: _Labels(),
    strings: EntityScreenLocale.ja.buildSync(),
    languageCode: lang,
  );
  await tester.pumpWidget(
    _host(
      EntityListPage(
        entityKey: 'trade',
        scope: scope,
        onOpen: (_) async {},
        onCreate: () async {},
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  _readOnlyTests();

  testWidgets('仮のレートの行だけ「(仮)」を付け、合計に「(一部仮)」を付ける。値は変えない', (tester) async {
    await _pumpList(tester, [
      EntityRecord(
        id: 'a',
        values: {
          'code': 'A',
          'amount_base': '1000',
          'rate_provisional': flagOn,
        },
      ),
      const EntityRecord(
        id: 'b',
        values: {'code': 'B', 'amount_base': '2000', 'rate_provisional': ''},
      ),
    ]);
    expect(find.text('1,000 円(仮)'), findsOneWidget);
    expect(find.text('2,000 円'), findsOneWidget);
    expect(find.textContaining('3,000 円(一部仮)'), findsOneWidget);
  });

  testWidgets('仮の行が無いときは、印を付けない', (tester) async {
    await _pumpList(tester, [
      const EntityRecord(
        id: 'a',
        values: {'code': 'A', 'amount_base': '1000', 'rate_provisional': ''},
      ),
    ]);
    expect(find.textContaining('(仮)'), findsNothing);
    expect(find.textContaining('(一部仮)'), findsNothing);
    expect(find.text('1,000 円'), findsOneWidget);
  });
}

// 閲覧だけ(canEdit = false): 編集の切り替え・新規は出ない。
void _readOnlyTests() {
  testWidgets('canEdit が false のときは、編集の切り替えと新規を出さない', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final catalog = EntityCatalog()
      ..register(
        InMemoryEntityRepository(_item, const [
          EntityRecord(id: 'a', values: {'code': 'A'}),
        ]),
      );
    final scope = EntityScope(
      catalog: catalog,
      labels: _Labels(),
      strings: EntityScreenLocale.ja.buildSync(),
    );
    for (final canEdit in [true, false]) {
      await tester.pumpWidget(
        _host(
          EntityListPage(
            key: ValueKey(canEdit),
            entityKey: 'trade',
            scope: scope,
            twoModes: true,
            canEdit: canEdit,
            onOpen: (_) async {},
            onCreate: () async {},
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(
        find.byKey(const ValueKey('listEditMode')),
        canEdit ? findsOneWidget : findsNothing,
        reason: '$canEdit',
      );
      expect(
        find.byKey(const ValueKey('listCreate')),
        findsNothing,
        reason: '閲覧のあいだは新規を出さない',
      );
    }
  });
}
