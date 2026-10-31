import 'package:baton_lib/baton_lib.dart';

/// バーコード実績登録のリーディングトップへ。
///
/// [symbol] を渡すと、開いた直後にその symbol を読み込んだものとして進める
/// (symbol ショートカットから遷移するとき用)。
final class BarcodeEntryDestination extends PageDestination<void> {
  const BarcodeEntryDestination({this.symbol});

  final String? symbol;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'symbol': symbol};
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> barcodeEntryDestinationSamples = [
  BarcodeEntryDestination(),
];
