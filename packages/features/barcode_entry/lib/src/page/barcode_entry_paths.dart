/// バーコード実績登録のパス。文字列はこのファイルだけに書く。
abstract final class BarcodeEntryPaths {
  /// リーディングトップ。クエリ `symbol` で、読み込み済みの symbol を渡せる。
  static const top = '/barcode';

  static const symbolQuery = 'symbol';

  /// 続けて読み込む品目(コード付き)。`symbol`(棚など)の次に読む。
  static const itemQuery = 'item';
}
