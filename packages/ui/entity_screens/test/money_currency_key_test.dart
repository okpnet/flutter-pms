import 'finders.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

// 行の通貨(FieldDefinition.currencyKey)。記号は行の値、位置は設定の言語ごと。値は変えない。

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
    FieldDefinition(key: 'currency_symbol', required: false, readOnly: true),
    FieldDefinition(
      key: 'amount',
      kind: FieldKind.number,
      money: true,
      total: true,
      currencyKey: 'currency_symbol',
    ),
  ],
);

EntityCatalog _catalog(List<EntityRecord> rows) =>
    EntityCatalog()..register(InMemoryEntityRepository(_item, rows));

Widget _host(Widget child) => ProviderScope(
  overrides: [
    themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
  ],
  child: Consumer(
    builder: (context, ref, _) =>
        MaterialApp(theme: ref.watch(lightThemeProvider), home: child),
  ),
);

EntityScope _scope(EntityCatalog c, {String lang = 'ja'}) => EntityScope(
  catalog: c,
  labels: _Labels(),
  strings: EntityScreenLocale.ja.buildSync(),
  languageCode: lang,
);

void main() {
  test('記号の指定があれば、設定の記号の代わりに使う(位置は設定)。空は設定の記号', () {
    const m = MoneyFormat.standard;
    expect(m.format('1200', symbol: r'$'), r'1,200 $');
    expect(m.format('1200', languageCode: 'en', symbol: r'$'), r'$1,200');
    expect(m.format('1200', symbol: ''), '1,200 円');
    expect(m.format('1200', symbol: null), '1,200 円');
    expect(m.affixesOf('en', symbol: 'EUR').prefix, 'EUR');
    expect(m.affixesOf('ja', symbol: 'EUR').suffix, 'EUR');
  });

  testWidgets('台帳(英語): 行ごとの通貨の記号で出し、通貨が混ざる合計は設定の記号。値は変えない', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final catalog = _catalog([
      const EntityRecord(
        id: 'a',
        values: {'code': 'A', 'currency_symbol': r'$', 'amount': '100'},
      ),
      const EntityRecord(
        id: 'b',
        values: {'code': 'B', 'currency_symbol': '€', 'amount': '200'},
      ),
      const EntityRecord(
        id: 'c',
        values: {'code': 'C', 'currency_symbol': '', 'amount': '300'},
      ),
    ]);
    await tester.pumpWidget(
      _host(
        EntityListPage(
          entityKey: 'trade',
          scope: _scope(catalog, lang: 'en'),
          onOpen: (_) async {},
          onCreate: () async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(r'$100'), findsOneWidget);
    expect(find.text('€200'), findsOneWidget);
    expect(find.text('¥300'), findsOneWidget); // 行に通貨が無い: 設定の記号
    expect(find.textContaining('¥600'), findsOneWidget); // 通貨が混ざる合計: 設定の記号
    expect(
      (await catalog.repository('trade')!.findById('a'))!.valueOf('amount'),
      '100',
    );
  });

  testWidgets('台帳: 行の通貨がすべて同じなら、合計もその記号', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final catalog = _catalog([
      const EntityRecord(
        id: 'a',
        values: {'code': 'A', 'currency_symbol': r'$', 'amount': '100'},
      ),
      const EntityRecord(
        id: 'b',
        values: {'code': 'B', 'currency_symbol': r'$', 'amount': '250'},
      ),
    ]);
    await tester.pumpWidget(
      _host(
        EntityListPage(
          entityKey: 'trade',
          scope: _scope(catalog),
          onOpen: (_) async {},
          onCreate: () async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('350 \$'), findsOneWidget);
  });

  testWidgets('編集: 入力欄の記号は、読み込んだ行の通貨', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final catalog = _catalog([
      const EntityRecord(
        id: 'a',
        values: {'code': 'A', 'currency_symbol': 'EUR', 'amount': '100'},
      ),
    ]);
    await tester.pumpWidget(
      _host(
        EntityEditPage(
          entityKey: 'trade',
          id: 'a',
          scope: _scope(catalog),
          onOpenChild: (_, _, _) async {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('EUR'), findsWidgets);
    expect(find.text('円'), findsNothing);
  });
}
