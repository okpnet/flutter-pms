import 'package:baton_lib/baton_lib.dart';

import '../barcode_code.dart';

/// バーコード実績登録のリーディングトップへ。
///
/// [symbol] を渡すと、開いた直後にその symbol を読み込んだものとして進める
/// (symbol ショートカットから遷移するとき用)。[code] を渡すと、メニューの種類を表すコード付きで読み込む。
/// [itemSymbol] を渡すと、[symbol](棚など)を読み込んだ次に、その品目(製品識別ラベル)を読み込んだものとして進める
/// (在庫状況の行から、棚と品目を引数にして棚移動へ進む)。
final class BarcodeEntryDestination extends PageDestination<void> {
  const BarcodeEntryDestination({this.symbol, this.code, this.itemSymbol});

  final String? symbol;
  final BarcodeCode? code;
  final String? itemSymbol;

  /// コードを付けた、読み込む文字列(`symbol` が無ければ null)。
  String? get scanValue {
    final s = symbol;
    if (s == null || s.isEmpty) return null;
    return code?.encode(s) ?? s;
  }

  /// 品目の読み込む文字列(品目のコード付き)。
  String? get itemScanValue {
    final s = itemSymbol;
    if (s == null || s.isEmpty) return null;
    return BarcodeCode.item.encode(s);
  }

  @override
  Map<String, Object?> toJson() => {
    ...super.toJson(),
    'symbol': symbol,
    'code': code?.prefix,
    'itemSymbol': itemSymbol,
  };
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> barcodeEntryDestinationSamples = [
  BarcodeEntryDestination(),
];
