/// 管理者への連絡手段。メールアドレスを登録していないユーザーが、パスワードを忘れたときに使う。
///
/// GoFパターン: Strategy。PocketBase には「ログイン前のユーザーが管理者へメールする」標準の窓口が無いため、
/// 実装(サーバーの専用API、社内のメール・チャットなど)はアプリが決めて差し込む。
abstract interface class IAdminContact {
  /// [username] のパスワード再設定を管理者へ依頼する。送れなかったときは例外を投げる。
  Future<void> requestPasswordReset(String username);
}
