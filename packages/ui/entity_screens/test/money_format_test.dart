import 'finders.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

// 金額の単位(順 3)。表示だけを変え、値(保存する文字)は変えない。位置は言語ごと(設定の JSON)に持つ。

class _Labels implements EntityLabels {
  @override
  String entity(String entityKey) => entityKey;
  @override
  String field(String entityKey, String fieldKey) => '$entityKey.$fieldKey';
  @override
  String reverse(String entityKey, String reverseEntityKey) => reverseEntityKey;
}

const _item = EntityDefinition(
  key: 'price',
  fields: [
    FieldDefinition(key: 'code'),
    FieldDefinition(key: 'unit_price', kind: FieldKind.number, money: true),
    FieldDefinition(key: 'total_amount', kind: FieldKind.number, required: false, readOnly: true, money: true, total: true),
    FieldDefinition(key: 'qty', kind: FieldKind.number, required: false),
  ],
);

EntityCatalog _catalog() => EntityCatalog()
  ..register(
    InMemoryEntityRepository(_item, [
      EntityRecord(id: 'p1', values: {'code': 'A', 'unit_price': '1200', 'total_amount': '2400000', 'qty': '3'}),
      EntityRecord(id: 'p2', values: {'code': 'B', 'unit_price': '80.5', 'total_amount': '600', 'qty': '1'}),
    ]),
  );

Widget _host(Widget child) => ProviderScope(
  overrides: [themeLoggerProvider.overrideWithValue(const NoopLoggerProvider())],
  child: Consumer(builder: (context, ref, _) => MaterialApp(theme: ref.watch(lightThemeProvider), home: child)),
);

EntityScope _scope(EntityCatalog c, {MoneyFormat money = MoneyFormat.standard, String lang = 'ja'}) => EntityScope(
  catalog: c,
  labels: _Labels(),
  strings: EntityScreenLocale.ja.buildSync(),
  money: money,
  languageCode: lang,
);

void main() {
  group('MoneyFormat', () {
    test('日本語は後ろに「円」、英語は前に「¥」。桁区切りをつけ、小数はそのまま', () {
      const m = MoneyFormat.standard;
      expect(m.format('1200'), '1,200 円');
      expect(m.format('1234567.50'), '1,234,567.50 円');
      expect(m.format('-9800'), '-9,800 円');
      expect(m.format('1200', languageCode: 'en'), '¥1,200');
      expect(m.format('1200', languageCode: 'EN'), '¥1,200');
      // 言語の指定が無い言語は、標準(base)
      expect(m.format('5', languageCode: 'fr'), '5 円');
    });

    test('空・数値でない文字は、そのまま返す(値を変えない)', () {
      expect(MoneyFormat.standard.format(''), '');
      expect(MoneyFormat.standard.format('言い値'), '言い値');
    });

    test('設定の JSON から読める。不正・null は標準。言語ごとの記号と位置を上書きできる', () {
      expect(MoneyFormat.fromJson(null).format('10'), '10 円');
      expect(MoneyFormat.fromJson('x').format('10'), '10 円');
      final usd = MoneyFormat.fromJson({
        'code': 'USD',
        'symbol': '\$',
        'position': 'prefix',
        'ja': {'symbol': 'ドル', 'position': 'suffix'},
      });
      expect(usd.code, 'USD');
      expect(usd.format('10', languageCode: 'en'), '¥10'); // en は標準の指定が残る(上書きしていない)
      expect(usd.format('10', languageCode: 'ja'), '10 ドル');
      expect(usd.format('10', languageCode: 'fr'), '\$10'); // 指定の無い言語は base
      // 往復
      final again = MoneyFormat.fromJson(usd.toJson());
      expect(again.format('10', languageCode: 'ja'), '10 ドル');
      expect(again.code, 'USD');
    });
  });

  testWidgets('台帳: 金額の列と合計は単位つき、金額でない数値は変えない。値は変えない', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final catalog = _catalog();
    await tester.pumpWidget(_host(EntityListPage(entityKey: 'price', scope: _scope(catalog), onOpen: (_) async {}, onCreate: () async {})));
    await tester.pumpAndSettle();
    expect(find.text('1,200 円'), findsOneWidget);
    expect(find.text('80.5 円'), findsOneWidget);
    expect(find.text('2,400,000 円'), findsOneWidget);
    // 合計の帯(2,400,600)
    expect(find.textContaining('2,400,600 円'), findsOneWidget);
    // 金額でない数値は、そのまま
    expect(find.text('3'), findsOneWidget);
    // 保存した値は、変わらない
    expect((await catalog.repository('price')!.findById('p1'))!.valueOf('unit_price'), '1200');
  });

  testWidgets('台帳(英語): 記号は前', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(_host(EntityListPage(entityKey: 'price', scope: _scope(_catalog(), lang: 'en'), onOpen: (_) async {}, onCreate: () async {})));
    await tester.pumpAndSettle();
    expect(find.text('¥1,200'), findsOneWidget);
  });

  testWidgets('編集: 金額の入力欄に記号が付き(日本語は後ろ)、読み取り専用の金額は単位つき。保存した値に記号は入らない', (tester) async {
    await tester.binding.setSurfaceSize(const Size(900, 900));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final catalog = _catalog();
    await tester.pumpWidget(
      _host(EntityEditPage(entityKey: 'price', id: 'p1', scope: _scope(catalog), onOpenChild: (_, _, _) async {})),
    );
    await tester.pumpAndSettle();
    expect(find.text('円'), findsOneWidget); // 入力欄の後ろの記号
    expect((tester.widget(find.byKey(const ValueKey('readonly:total_amount'))) as Text).data, '2,400,000 円');
    await tester.enterText(fieldByLabel('price.unit_price'), '1500');
    await tester.tap(find.text('保存'));
    await tester.pumpAndSettle();
    expect((await catalog.repository('price')!.findById('p1'))!.valueOf('unit_price'), '1500');
  });
}
