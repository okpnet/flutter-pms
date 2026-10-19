/// 顧客機能のパス。文字列はこのファイルだけに書く。
abstract final class CustomerPaths {
  static const list = '/customers';

  /// [list] の子ルート(相対パス)
  static const pickSegment = 'pick';
  static const editSegment = ':id';

  static const pick = '$list/$pickSegment';
  static String edit(int id) => '$list/$id';
}
