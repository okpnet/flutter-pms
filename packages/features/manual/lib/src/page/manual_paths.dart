/// マニュアルのパス。文字列はこのファイルだけに書く。
abstract final class ManualPaths {
  /// マニュアル。ページは、クエリ `id` で指定する(省略は最初のルート)。編集の状態で開くときは `edit=1`。
  /// アクセスの許可はパス(`/manual`)だけで判定するため、ページごとにパスを分けない。
  static const home = '/manual';

  static String pageOf(String id, {bool edit = false}) => Uri(
    path: home,
    queryParameters: {'id': id, if (edit) 'edit': '1'},
  ).toString();
}
