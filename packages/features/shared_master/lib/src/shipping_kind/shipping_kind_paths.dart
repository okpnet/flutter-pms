/// 配送区分機能のパス。文字列はこのファイルだけに書く。
abstract final class ShippingKindPaths {
  static const list = '/shipping-kinds';

  /// [list] の子ルート(相対パス)。':id' より先に置く。
  static const pickSegment = 'pick';
  static const newSegment = 'new';
  static const editSegment = ':id';

  static const pick = '$list/$pickSegment';
  static const create = '$list/$newSegment';
  static String edit(String id) => '$list/$id';
}
