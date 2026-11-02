import 'package:baton_lib/baton_lib.dart';

/// ログイン画面へ(ユーザーIDまたはEメール + パスワード)。
final class LoginDestination extends PageDestination<void> {
  const LoginDestination();
}

/// 新規登録(申請)へ。
final class SignupDestination extends PageDestination<void> {
  const SignupDestination();
}

/// パスワードを忘れたとき(再設定の依頼)へ。
final class PasswordResetRequestDestination extends PageDestination<void> {
  const PasswordResetRequestDestination();
}

/// 認証コードの入力へ(有効化・パスワード再設定の共通)。
/// 依頼をせず、渡されたコードで入る場合もある。
final class AcceptCodeDestination extends PageDestination<void> {
  const AcceptCodeDestination();
}

/// 新しいパスワードの入力へ(認証コードの入力のあと)。コードが無いときは認証コードの入力へ戻される。
final class NewPasswordDestination extends PageDestination<void> {
  const NewPasswordDestination();
}

/// 共有ファイル(一覧・アップロード・ダウンロード)へ。
final class SharedFilesDestination extends PageDestination<void> {
  const SharedFilesDestination();
}

/// 管理者: 登録申請の一覧(承認・却下)へ。
final class AdminSignupsDestination extends PageDestination<void> {
  const AdminSignupsDestination();
}

/// 管理者: パスワード再設定の依頼の一覧(コードの発行)へ。
final class AdminResetsDestination extends PageDestination<void> {
  const AdminResetsDestination();
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> authFilesDestinationSamples = [
  LoginDestination(),
  SignupDestination(),
  PasswordResetRequestDestination(),
  AcceptCodeDestination(),
  NewPasswordDestination(),
  SharedFilesDestination(),
  AdminSignupsDestination(),
  AdminResetsDestination(),
];
