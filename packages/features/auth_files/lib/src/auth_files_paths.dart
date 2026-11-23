/// auth_files のパス。文字列はこのファイルだけに書く。
///
/// ログイン前の画面のパスは、画面案(`tools/open-design`)の `#/login`・`#/register`・
/// `#/forgot`・`#/forgot/code`・`#/forgot/reset` に対応する。
abstract final class AuthFilesPaths {
  static const login = '/auth/login';
  static const logout = '/auth/logout';
  static const register = '/auth/register';
  static const forgot = '/auth/forgot';
  static const forgotCode = '/auth/forgot/code';
  static const forgotReset = '/auth/forgot/reset';
  static const files = '/auth/files';
  static const adminSignups = '/auth/admin/signups';
  static const adminResets = '/auth/admin/resets';
  static const adminCreateUser = '/auth/admin/users/new';

  /// ユーザーの作成(担当者の ID と氏名を初期値に渡す)。
  static String adminCreateUserOf({String appUserId = '', String name = ''}) => Uri(
    path: adminCreateUser,
    queryParameters: {if (appUserId.isNotEmpty) 'staff': appUserId, if (name.isNotEmpty) 'name': name},
  ).toString();

  /// ログアウト。セッションが切れて開くときは `?expired=1`(確認を出さず、切れたことを案内する)。
  static String logoutWith({bool sessionExpired = false}) =>
      sessionExpired ? '$logout?expired=1' : logout;
}
