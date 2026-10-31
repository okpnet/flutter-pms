/// バーコード実績登録のパス。文字列はこのファイルだけに書く。
abstract final class BarcodeEntryPaths {
  /// リーディングトップ。クエリ `symbol` で、読み込み済みの symbol を渡せる。
  static const top = '/barcode';

  static const symbolQuery = 'symbol';
}
