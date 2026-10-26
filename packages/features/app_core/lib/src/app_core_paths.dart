/// AppCore のパス。文字列はこのファイルだけに書く。
abstract final class AppCorePaths {
  static const boot = '/boot';
  static const dashboard = '/dashboard';
  static const settings = '/settings';
  static const logout = '/logout';
  static const error = '/error';

  /// エラー画面。内容があるときは `?message=` で渡す。
  static String errorWith(String? message) => message == null || message.isEmpty
      ? error
      : Uri(path: error, queryParameters: {'message': message}).toString();
}
