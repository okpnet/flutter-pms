/// 取得元が返した為替レートの 1 枚の表(基準の通貨 1 単位 = 各通貨いくら)。
///
/// 取得元ごとに基準の通貨が違う(欧州中央銀行(ECB)はユーロ)ため、アプリの基準通貨への換算は [crossRate] で行う。
/// 値オブジェクト(Value Object)。
class RateSheet {
  RateSheet({
    required this.base,
    required this.date,
    required Map<String, double> rates,
  }) : rates = Map.unmodifiable({
         for (final e in rates.entries)
           if (e.value > 0 && e.value.isFinite) e.key.toUpperCase(): e.value,
         base.toUpperCase(): 1.0,
       });

  /// 基準の通貨コード(例: `EUR`)。
  final String base;

  /// レートの日付(`yyyy-MM-dd`)。取得元が示す営業日。
  final String date;

  /// 通貨コード → 基準の通貨 1 単位あたりの値。基準の通貨自身は 1。
  final Map<String, double> rates;

  /// [from] 1 単位が [to] いくらか。どちらかが表に無いときは null(その取得元からは換算できない)。
  /// 例: ユーロ基準の表で `crossRate('USD', 'JPY')` = JPY/EUR ÷ USD/EUR。
  double? crossRate(String from, String to) {
    final a = rates[from.toUpperCase()];
    final b = rates[to.toUpperCase()];
    if (a == null || b == null) return null;
    final value = b / a;
    return value > 0 && value.isFinite ? value : null;
  }
}
