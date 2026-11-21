/// 本文の画面のパス。文字列はこのファイルだけに書く。アクセスの許可はパス(`/quality-document/body`)だけで判定する。
abstract final class DocumentBodyPaths {
  static const home = '/quality-document/body';

  static String of(String contentId, {bool edit = false}) =>
      Uri(path: home, queryParameters: {'id': contentId, if (edit) 'edit': '1'}).toString();
}
