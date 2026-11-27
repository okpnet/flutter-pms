import 'dart:convert';

import 'exchange_rate_source.dart';
import 'rate_sheet.dart';
import 'text_fetcher.dart';

/// Frankfurter(公的な提供元のレートをまとめる API。認証なし)。`providers` で提供元を指定する
/// (`ecb` = 欧州中央銀行、`boj` = 日本銀行 など)。指定しないと複数の提供元の混合になる(どの機関の値でもない)ため、
/// 標準は提供元を指定する。保証は無い(提供元の継続性は運営次第)。
class FrankfurterRateSource implements IExchangeRateSource {
  FrankfurterRateSource({
    String? url,
    this.providers = 'ecb',
    this.base = 'EUR',
    this.fetcher = httpsTextFetcher,
  }) : baseUrl = url ?? standardUrl;

  static const standardUrl = 'https://api.frankfurter.dev';

  final String baseUrl;

  /// 提供元の指定(カンマ区切り)。
  final String providers;

  /// 基準の通貨(取得元の表の基準)。
  final String base;
  final TextFetcher fetcher;

  @override
  String get label => 'Frankfurter/$providers';

  @override
  Future<RateSheet> fetch() async {
    final url = Uri.parse(baseUrl).replace(
      path: '/v2/rates',
      queryParameters: {
        'base': base,
        if (providers.isNotEmpty) 'providers': providers,
      },
    );
    final Object? json;
    try {
      json = jsonDecode(await fetcher(url));
    } on FormatException {
      throw const ExchangeRateSourceException('Frankfurter: 応答を読めない');
    }
    if (json is! List)
      throw const ExchangeRateSourceException('Frankfurter: 応答の形が違う');
    final rates = <String, double>{};
    String? latest;
    for (final item in json) {
      if (item is! Map) continue;
      final quote = item['quote'];
      final rate = item['rate'];
      final date = item['date'];
      if (quote is String && rate is num) rates[quote] = rate.toDouble();
      // 通貨ごとに日付が違うことがある。いちばん新しい日付を表の日付にする
      if (date is String && (latest == null || date.compareTo(latest) > 0))
        latest = date;
    }
    if (latest == null || rates.isEmpty)
      throw const ExchangeRateSourceException('Frankfurter: レートが無い');
    return RateSheet(base: base, date: latest, rates: rates);
  }
}
