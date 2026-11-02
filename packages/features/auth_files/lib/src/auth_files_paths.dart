/// auth_files のパス。文字列はこのファイルだけに書く。
///
/// ログイン前の画面のパスは、画面案(`tools/open-design`)の `#/login`・`#/register`・
/// `#/forgot`・`#/forgot/code`・`#/forgot/reset` に対応する。
abstract final class AuthFilesPaths {
  static const login = '/auth/login';
  static const register = '/auth/register';
  static const forgot = '/auth/forgot';
  static const forgotCode = '/auth/forgot/code';
  static const forgotReset = '/auth/forgot/reset';
  static const files = '/auth/files';
  static const adminSignups = '/auth/admin/signups';
  static const adminResets = '/auth/admin/resets';
}
