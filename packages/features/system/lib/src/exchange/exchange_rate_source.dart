import 'rate_sheet.dart';

/// 為替レートの取得元(Strategy)。取得元ごとの通信・形式の違いを隠し、[RateSheet] を返す。
///
/// 取得に失敗したときは例外を投げる(通信の失敗・読めない応答)。呼び出し側([ExchangeRateFetcher])が、次の取得元へ進む。
abstract interface class IExchangeRateSource {
  /// 取得元の名前(出典として `trans_exchange_rate.source` に残す)。
  String get label;

  /// 最新のレートの表を取得する。
  Future<RateSheet> fetch();
}

/// 取得に失敗した(通信の失敗・読めない応答・https でない接続先)。
class ExchangeRateSourceException implements Exception {
  const ExchangeRateSourceException(this.message);
  final String message;

  @override
  String toString() => 'ExchangeRateSourceException: $message';
}
