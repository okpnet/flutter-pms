import 'package:entity_screens/entity_screens.dart';

import 'exchange_rate_fetcher.dart';

/// 自動取得の結果(画面に出す)。
class ImportResult {
  const ImportResult({
    required this.registered,
    required this.skipped,
    required this.failures,
    required this.sourceErrors,
  });

  /// 登録したレート(通貨コード・日付)。
  final List<({String code, String date})> registered;

  /// すでに同じ通貨・同じ適用開始日のレートがあり、登録しなかった通貨コード(追記のみのため、重ねて足さない)。
  final List<String> skipped;
  final List<FetchFailure> failures;
  final Map<String, String> sourceErrors;
}

/// 為替レートの自動取得: 自動取得の対象の通貨(`rate_auto`)のレートを取得元から取り、為替レート(追記のみ)へ登録する。
///
/// 登録・読み込みは登録簿(`currency`・`exchangerate` の取得元)をとおす(GraphQL でもメモリ上でも同じ)。
/// 失敗した通貨は登録せず、一覧で返す(手入力で補える)。取得全体の失敗は、既存のレートに触れない。
class ExchangeRateImporter {
  ExchangeRateImporter({
    required this.catalog,
    required this.fetcher,
    this.defaultBaseCode = 'JPY',
  });

  final EntityCatalog catalog;
  final ExchangeRateFetcher fetcher;

  /// 基準通貨が台帳から分からないときの通貨コード(標準は日本円)。
  final String defaultBaseCode;

  Future<ImportResult> run() async {
    final currencyRepo = catalog.repository('currency')!;
    final rateRepo = catalog.repository('exchangerate')!;
    final currencies = await currencyRepo.find(take: 1000);
    final base =
        currencies
            .where((c) => c.valueOf('is_base') == flagOn)
            .firstOrNull
            ?.valueOf('code') ??
        defaultBaseCode;
    final targets = [
      for (final c in currencies)
        if (c.valueOf('rate_auto') == 'はい' && c.valueOf('code') != base) c,
    ];
    final result = await fetcher.fetch([
      for (final c in targets) c.valueOf('code'),
    ], baseCode: base);
    final byCode = {
      for (final c in targets) c.valueOf('code').toUpperCase(): c,
    };

    final existing = await rateRepo.find(take: 100000);
    final registered = <({String code, String date})>[];
    final skipped = <String>[];
    for (final r in result.rates) {
      final currency = byCode[r.code]!;
      final duplicate = existing.any(
        (e) =>
            e.valueOf('mstr_currency_id') == currency.id &&
            e.valueOf('rate_date') == r.date,
      );
      if (duplicate) {
        skipped.add(r.code);
        continue;
      }
      await rateRepo.save(
        EntityRecord(
          id: '',
          values: {
            'mstr_currency_id': currency.id,
            'rate_date': r.date,
            'rate': _decimal(r.rate),
            'auto_fetched': 'はい',
            'source': r.source,
          },
        ),
      );
      registered.add((code: r.code, date: r.date));
    }
    return ImportResult(
      registered: registered,
      skipped: skipped,
      failures: result.failures,
      sourceErrors: result.sourceErrors,
    );
  }

  /// レートの文字(`numeric(18,8)`。小数 8 桁まで。末尾の 0 は除く)。
  static String _decimal(double v) {
    var s = v.toStringAsFixed(8);
    if (s.contains('.'))
      s = s.replaceFirst(RegExp(r'0+$'), '').replaceFirst(RegExp(r'\.$'), '');
    return s;
  }
}
