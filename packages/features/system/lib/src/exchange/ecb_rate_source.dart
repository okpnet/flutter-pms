import 'exchange_rate_source.dart';
import 'rate_sheet.dart';
import 'text_fetcher.dart';

/// 欧州中央銀行(ECB)の参考レート(日次の XML)。ユーロ基準・約 29 通貨・営業日の 16:00 CET ごろに更新。
/// 出典として ECB を示す。情報提供用の概算(取引・決済には使わない)。
class EcbRateSource implements IExchangeRateSource {
  EcbRateSource({String? url, this.fetcher = httpsTextFetcher})
    : url = Uri.parse(url ?? standardUrl);

  static const standardUrl =
      'https://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml';

  final Uri url;
  final TextFetcher fetcher;

  @override
  String get label => 'ECB';

  @override
  Future<RateSheet> fetch() async {
    final text = await fetcher(url);
    final date = RegExp(
      r'''time=['"](\d{4}-\d{2}-\d{2})['"]''',
    ).firstMatch(text)?.group(1);
    if (date == null) throw const ExchangeRateSourceException('ECB: 日付を読めない');
    final rates = <String, double>{};
    for (final m in RegExp(
      r'''<Cube\s+currency=['"]([A-Z]{3})['"]\s+rate=['"]([0-9.]+)['"]''',
    ).allMatches(text)) {
      final v = double.tryParse(m.group(2)!);
      if (v != null) rates[m.group(1)!] = v;
    }
    if (rates.isEmpty) throw const ExchangeRateSourceException('ECB: レートを読めない');
    return RateSheet(base: 'EUR', date: date, rates: rates);
  }
}
