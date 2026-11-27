import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system/src/entities/system_definitions.dart';
import 'package:system/src/exchange/ecb_rate_source.dart';
import 'package:system/src/exchange/exchange_rate_fetcher.dart';
import 'package:system/src/exchange/exchange_rate_importer.dart';
import 'package:system/src/exchange/exchange_rate_source.dart';
import 'package:system/src/exchange/exchange_settings.dart';
import 'package:system/src/exchange/frankfurter_rate_source.dart';
import 'package:system/src/exchange/rate_sheet.dart';

// 為替レートの自動取得(取得元の抽象化・優先順位・通貨の指定・登録)。通信は差し替える。

const _ecbXml = '''<?xml version="1.0" encoding="UTF-8"?>
<gesmes:Envelope xmlns:gesmes="http://www.gesmes.org/xml/2002-08-01" xmlns="http://www.ecb.int/vocabulary/2002-08-01/eurofxref">
  <Cube>
    <Cube time='2026-11-26'>
      <Cube currency='USD' rate='1.0975'/>
      <Cube currency='JPY' rate='174.79'/>
      <Cube currency='GBP' rate='0.83755'/>
    </Cube>
  </Cube>
</gesmes:Envelope>''';

const _frankfurterJson =
    '[{"date":"2026-11-26","base":"EUR","quote":"JPY","rate":174.79},'
    '{"date":"2026-11-26","base":"EUR","quote":"USD","rate":1.0975},'
    '{"date":"2026-11-25","base":"EUR","quote":"CNY","rate":7.9}]';

/// 通信の代役。URL の先頭が一致する経路の本文を返す。値が例外のときは通信の失敗にする。
class _Stub {
  _Stub(this.routes);
  final Map<String, Object> routes;
  final calls = <Uri>[];

  Future<String> call(Uri url) async {
    calls.add(url);
    final hit = routes.entries
        .where((e) => url.toString().startsWith(e.key))
        .firstOrNull;
    if (hit == null) throw const ExchangeRateSourceException('HTTP 404');
    final v = hit.value;
    if (v is Exception) throw v;
    return v as String;
  }
}

void main() {
  group('RateSheet', () {
    test('ユーロ基準の表から、円への交差レートを作る(JPY/EUR ÷ 通貨/EUR)。基準自身は 1', () {
      final s = RateSheet(
        base: 'EUR',
        date: '2026-11-26',
        rates: {'USD': 1.0975, 'JPY': 174.79},
      );
      expect(s.crossRate('USD', 'JPY'), closeTo(174.79 / 1.0975, 1e-9));
      expect(s.crossRate('EUR', 'JPY'), 174.79);
      expect(s.crossRate('JPY', 'EUR'), closeTo(1 / 174.79, 1e-12));
      expect(s.crossRate('XXX', 'JPY'), isNull);
      expect(s.crossRate('USD', 'XXX'), isNull);
    });
  });

  group('取得元', () {
    test('ECB: 日付とレートを読む。読めない応答は例外', () async {
      final f = _Stub({'https://www.ecb.europa.eu/': _ecbXml});
      final sheet = await EcbRateSource(fetcher: f.call).fetch();
      expect((sheet.base, sheet.date), ('EUR', '2026-11-26'));
      expect(sheet.rates['JPY'], 174.79);
      expect(sheet.rates['GBP'], 0.83755);
      await expectLater(
        EcbRateSource(fetcher: _Stub({'https://': '<x/>'}).call).fetch(),
        throwsA(isA<ExchangeRateSourceException>()),
      );
    });

    test('Frankfurter: 提供元を指定して取り、いちばん新しい日付を表の日付にする', () async {
      final f = _Stub({
        'https://api.frankfurter.dev/v2/rates': _frankfurterJson,
      });
      final sheet = await FrankfurterRateSource(
        providers: 'boj',
        fetcher: f.call,
      ).fetch();
      expect(sheet.date, '2026-11-26');
      expect(sheet.rates['CNY'], 7.9);
      expect(f.calls.single.queryParameters, {
        'base': 'EUR',
        'providers': 'boj',
      });
      await expectLater(
        FrankfurterRateSource(
          fetcher: _Stub({'https://': 'not json'}).call,
        ).fetch(),
        throwsA(isA<ExchangeRateSourceException>()),
      );
      await expectLater(
        FrankfurterRateSource(fetcher: _Stub({'https://': '{}'}).call).fetch(),
        throwsA(isA<ExchangeRateSourceException>()),
      );
    });
  });

  group('設定', () {
    test('無い・読めない・取得元が空のときは標準(ECB → Frankfurter/ecb)', () {
      for (final j in [
        null,
        'x',
        <String, Object?>{},
        {'sources': []},
        {
          'sources': [
            {'provider': 'unknown'},
          ],
        },
      ]) {
        final s = ExchangeSettings.fromJson(j);
        expect(
          [for (final c in s.sources) c.provider],
          ['ecb', 'frankfurter'],
          reason: '$j',
        );
      }
    });

    test('取得元は 3 件まで。通貨コードは大文字にする。読めない取得元は外す', () {
      final s = ExchangeSettings.fromJson({
        'sources': [
          {'provider': 'ecb'},
          {'provider': 'bad'},
          {
            'provider': 'frankfurter',
            'providers': 'boj',
            'currencies': ['usd'],
          },
          {'provider': 'frankfurter'},
          {'provider': 'ecb', 'url': 'https://example.test/x.xml'},
        ],
      });
      expect(s.sources.length, 3);
      expect(s.sources[1].currencies, ['USD']);
      expect(s.isPinned('usd'), isTrue);
      expect(s.isPinned('EUR'), isFalse);
      expect(ExchangeSettings.fromJson(s.toJson()).sources.length, 3);
    });
  });

  group('ExchangeRateFetcher(優先順位)', () {
    test('先の取得元で取れた通貨は、あとの取得元に取りに行かない。円(基準)は取りに行かない', () async {
      final f = _Stub({
        'https://www.ecb.europa.eu/': _ecbXml,
        'https://api.frankfurter.dev/': _frankfurterJson,
      });
      final fetcher = ExchangeRateFetcher.fromSettings(
        ExchangeSettings.standard,
        fetcher: f.call,
      );
      final r = await fetcher.fetch(['USD', 'JPY', 'GBP'], baseCode: 'JPY');
      expect({for (final x in r.rates) x.code}, {'USD', 'GBP'});
      expect(
        r.rates.firstWhere((x) => x.code == 'USD').rate,
        closeTo(174.79 / 1.0975, 1e-9),
      );
      expect(r.rates.first.date, '2026-11-26');
      expect(r.rates.first.source, 'ECB(EUR 基準から換算)');
      expect(r.failures, isEmpty);
      expect(f.calls.length, 1); // ECB だけ
    });

    test('先の取得元が接続できないときは、次の取得元で取る。ECB に無い通貨も次の取得元で取る', () async {
      final f = _Stub({
        'https://www.ecb.europa.eu/': const ExchangeRateSourceException('down'),
        'https://api.frankfurter.dev/': _frankfurterJson,
      });
      final fetcher = ExchangeRateFetcher.fromSettings(
        ExchangeSettings.standard,
        fetcher: f.call,
      );
      final r = await fetcher.fetch(['USD', 'CNY'], baseCode: 'JPY');
      expect({for (final x in r.rates) x.code}, {'USD', 'CNY'});
      expect(r.rates.first.source, startsWith('Frankfurter/ecb'));
      expect(r.sourceErrors.keys, ['ECB']);
    });

    test('どの取得元にも無い通貨は失敗(取得の対象外)。すべて接続できないときは「接続できない」', () async {
      final f = _Stub({
        'https://www.ecb.europa.eu/': _ecbXml,
        'https://api.frankfurter.dev/': _frankfurterJson,
      });
      final r = await ExchangeRateFetcher.fromSettings(
        ExchangeSettings.standard,
        fetcher: f.call,
      ).fetch(['RUB'], baseCode: 'JPY');
      expect(r.failures.single.code, 'RUB');
      expect(r.failures.single.reason, FetchFailureReason.notProvided);
      final down = _Stub({});
      final r2 = await ExchangeRateFetcher.fromSettings(
        ExchangeSettings.standard,
        fetcher: down.call,
      ).fetch(['USD'], baseCode: 'JPY');
      expect(r2.rates, isEmpty);
      expect(r2.failures.single.reason, FetchFailureReason.sourcesUnavailable);
      expect(r2.sourceErrors.length, 2);
    });

    test('通貨を指定した取得元: 指定した通貨は、その取得元だけを使う。指定の無い通貨は指定の無い取得元', () async {
      final settings = ExchangeSettings.fromJson({
        'sources': [
          {'provider': 'ecb'},
          {
            'provider': 'frankfurter',
            'providers': 'boj',
            'currencies': ['USD'],
          },
        ],
      });
      final f = _Stub({
        'https://www.ecb.europa.eu/': _ecbXml,
        'https://api.frankfurter.dev/': _frankfurterJson,
      });
      final r = await ExchangeRateFetcher.fromSettings(
        settings,
        fetcher: f.call,
      ).fetch(['USD', 'GBP'], baseCode: 'JPY');
      expect(
        r.rates.firstWhere((x) => x.code == 'USD').source,
        startsWith('Frankfurter/boj'),
      );
      expect(
        r.rates.firstWhere((x) => x.code == 'GBP').source,
        startsWith('ECB'),
      );
    });
  });

  group('ExchangeRateImporter(登録)', () {
    EntityCatalog catalog() {
      final currency = systemDefinitions.firstWhere((d) => d.key == 'currency');
      final rate = systemDefinitions.firstWhere((d) => d.key == 'exchangerate');
      EntityRecord cur(
        String id,
        String code,
        String auto, {
        String base = '',
      }) => EntityRecord(
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
            cur('c-usd', 'USD', 'はい'),
            cur('c-gbp', 'GBP', 'はい'),
            cur('c-eur', 'EUR', 'いいえ'),
            cur('c-rub', 'RUB', 'はい'),
          ]),
        )
        ..register(
          InMemoryEntityRepository(rate, [
            const EntityRecord(
              id: 'r1',
              values: {
                'mstr_currency_id': 'c-usd',
                'rate_date': '2026-11-26',
                'rate': '150',
              },
            ),
          ]),
        );
    }

    test('自動取得の対象だけを取り、追記する(同じ通貨・同じ日はスキップ)。取れない通貨は失敗の一覧', () async {
      final c = catalog();
      final f = _Stub({
        'https://www.ecb.europa.eu/': _ecbXml,
        'https://api.frankfurter.dev/': _frankfurterJson,
      });
      final importer = ExchangeRateImporter(
        catalog: c,
        fetcher: ExchangeRateFetcher.fromSettings(
          ExchangeSettings.standard,
          fetcher: f.call,
        ),
      );
      final r = await importer.run();
      expect(r.registered.map((x) => x.code), ['GBP']);
      expect(r.skipped, ['USD']);
      expect(r.failures.map((x) => x.code), ['RUB']);
      final rows = await c.repository('exchangerate')!.find(take: 100);
      expect(rows.length, 2);
      final added = rows.firstWhere(
        (x) => x.valueOf('mstr_currency_id') == 'c-gbp',
      );
      expect(added.valueOf('auto_fetched'), 'はい');
      expect(added.valueOf('rate_date'), '2026-11-26');
      expect(added.valueOf('source'), 'ECB(EUR 基準から換算)');
      expect(
        double.parse(added.valueOf('rate')),
        closeTo(174.79 / 0.83755, 1e-6),
      );
      // 2 回目は、すべて既存のため登録しない
      final again = await importer.run();
      expect(again.registered, isEmpty);
      expect(again.skipped.toSet(), {'USD', 'GBP'});
    });

    test('取得元がすべて接続できないとき、既存のレートに触れない', () async {
      final c = catalog();
      final importer = ExchangeRateImporter(
        catalog: c,
        fetcher: ExchangeRateFetcher.fromSettings(
          ExchangeSettings.standard,
          fetcher: _Stub({}).call,
        ),
      );
      final r = await importer.run();
      expect(r.registered, isEmpty);
      expect(r.failures.length, 3);
      expect((await c.repository('exchangerate')!.find(take: 100)).length, 1);
    });
  });
}
