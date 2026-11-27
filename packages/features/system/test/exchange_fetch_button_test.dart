import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system/src/entities/system_definitions.dart';
import 'package:system/src/exchange/exchange_fetch_button.dart';
import 'package:system/src/exchange/exchange_providers.dart';
import 'package:system/src/exchange/exchange_rate_source.dart';

const _ecbXml =
    "<Cube><Cube time='2026-11-26'><Cube currency='USD' rate='1.0975'/><Cube currency='JPY' rate='174.79'/><Cube currency='GBP' rate='0.83755'/></Cube></Cube>";

EntityCatalog _catalog() {
  final currency = systemDefinitions.firstWhere((d) => d.key == 'currency');
  final rate = systemDefinitions.firstWhere((d) => d.key == 'exchangerate');
  EntityRecord cur(String id, String code, String auto, {String base = ''}) =>
      EntityRecord(
        id: id,
        values: {
          'code': code,
          'name': code,
          'currency_symbol': code,
          'rate_auto': auto,
          'is_base': base,
        },
      );
  return EntityCatalog()
    ..register(
      InMemoryEntityRepository(currency, [
        cur('c-jpy', 'JPY', 'いいえ', base: flagOn),
        cur('c-gbp', 'GBP', 'はい'),
        cur('c-rub', 'RUB', 'はい'),
      ]),
    )
    ..register(InMemoryEntityRepository(rate, []));
}

Widget _app(
  EntityCatalog catalog, {
  bool allowed = true,
  Future<String> Function(Uri)? fetcher,
  required void Function() onReload,
}) => ProviderScope(
  overrides: [
    entityCatalogProvider.overrideWithValue(catalog),
    exchangeFetchAllowedProvider.overrideWithValue(allowed),
    exchangeTextFetcherProvider.overrideWithValue(
      fetcher ?? (u) async => _ecbXml,
    ),
  ],
  child: MaterialApp(
    home: Scaffold(body: ExchangeFetchButton(reload: onReload)),
  ),
);

void main() {
  testWidgets('押すと取得して追記し、登録と失敗(取得元に無い通貨)を出す。登録があれば台帳を読み込み直す', (tester) async {
    final catalog = _catalog();
    var reloaded = 0;
    await tester.pumpWidget(_app(catalog, onReload: () => reloaded++));
    await tester.tap(find.byKey(const ValueKey('exchange-fetch')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('exchange-fetch-result')), findsOneWidget);
    expect(find.textContaining('登録: 1 件'), findsOneWidget);
    expect(find.textContaining('GBP'), findsWidgets);
    expect(find.byKey(const ValueKey('exchange-failure-RUB')), findsOneWidget);
    expect(reloaded, 1);
    final rows = await catalog.repository('exchangerate')!.find(take: 10);
    expect(rows.single.valueOf('auto_fetched'), 'はい');
    expect(rows.single.valueOf('source'), 'ECB(EUR 基準から換算)');
    await tester.tap(find.text('閉じる'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('exchange-fetch-result')), findsNothing);
  });

  testWidgets('すべての取得元に接続できないとき、登録せず、接続できない旨と取得元を出す。台帳は読み込み直さない', (
    tester,
  ) async {
    final catalog = _catalog();
    var reloaded = 0;
    await tester.pumpWidget(
      _app(
        catalog,
        fetcher: (u) async => throw const ExchangeRateSourceException('down'),
        onReload: () => reloaded++,
      ),
    );
    await tester.tap(find.byKey(const ValueKey('exchange-fetch')));
    await tester.pumpAndSettle();
    expect(find.textContaining('取得元に接続できません'), findsWidgets);
    expect(
      find.byKey(const ValueKey('exchange-source-error-ECB')),
      findsOneWidget,
    );
    expect(reloaded, 0);
    expect(await catalog.repository('exchangerate')!.find(take: 10), isEmpty);
  });

  testWidgets('実行できない人(管理者以外)には、ボタンを出さない', (tester) async {
    await tester.pumpWidget(_app(_catalog(), allowed: false, onReload: () {}));
    expect(find.byKey(const ValueKey('exchange-fetch')), findsNothing);
  });
}
