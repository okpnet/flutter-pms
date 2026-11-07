/// バーコードのコード(メニューの種類を表す接頭辞 2 文字)。
///
/// バーコードの文字列は `<コード 2 文字><symbol>`(例: `WR` + 工程の symbol)。コードはメニューの種類を、
/// symbol は DB の対象(`リニアシンボル`)を表す。コードの無い従来の symbol も、これまでどおり読める。
///
/// パターン: Value Object(コードと symbol の組)
enum BarcodeCode {
  /// 作業実績(作業指示書の工程。N 工程目は工程ごとの symbol が決める)。
  work('WR'),

  /// 受入検品(発注明細)。
  receive('RC'),

  /// 棚移動(棚 = コンテナの移動先)。
  shelfMove('SM'),

  /// コンテナ(払出・入庫を選ぶ)。
  container('CN'),

  /// 設備点検。
  equipment('EQ'),

  /// 品目(製品識別ラベル)。
  item('IT');

  const BarcodeCode(this.prefix);

  /// 接頭辞(2 文字・大文字)。
  final String prefix;

  /// バーコードの文字列にする(`prefix + symbol`)。
  String encode(String symbol) => '$prefix$symbol';

  /// 読み込んだ文字列を、コードと symbol に分ける。コードの無い文字列は [ParsedBarcode.code] が null で、
  /// 全体が symbol。大文字小文字は区別しない。接頭辞だけ(symbol が空)のときはコードとして扱わない。
  static ParsedBarcode parse(String raw) {
    final v = raw.trim();
    if (v.length > 2) {
      final head = v.substring(0, 2).toUpperCase();
      for (final c in values) {
        if (c.prefix == head) return ParsedBarcode(c, v.substring(2));
      }
    }
    return ParsedBarcode(null, v);
  }
}

/// [BarcodeCode.parse] の結果。
class ParsedBarcode {
  const ParsedBarcode(this.code, this.symbol);

  final BarcodeCode? code;
  final String symbol;

  Map<String, Object?> toJson() => {'code': code?.prefix, 'symbol': symbol};
}
