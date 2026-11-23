import 'package:baton_lib/baton_lib.dart';

/// ログイン画面へ(ユーザーIDまたはEメール + パスワード)。
final class LoginDestination extends PageDestination<void> {
  const LoginDestination();
}

/// ログアウト画面へ。ユーザーメニューの「ログアウト」から開くと、確認 → ログアウト → 完了(5秒後にログイン画面へ)。
/// [sessionExpired] が true(セッション切れ)のときは、確認を出さずにログアウトし、切れたことを案内する。
final class LogoutDestination extends PageDestination<void> {
  const LogoutDestination({this.sessionExpired = false});

  final bool sessionExpired;

  @override
  Map<String, Object?> toJson() => {
    ...super.toJson(),
    'sessionExpired': sessionExpired,
  };
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

/// 管理者: アカウント管理(登録申請の一覧。アカウントの作成・却下)へ。
final class AdminSignupsDestination extends PageDestination<void> {
  const AdminSignupsDestination();
}

/// 管理者: パスワード再設定の依頼の一覧(コードの発行)へ。
final class AdminResetsDestination extends PageDestination<void> {
  const AdminResetsDestination();
}

/// 管理者: ユーザーの作成(PocketBase のユーザー + 有効化コードの発行)へ。
/// [appUserId] は DB の担当者(`info_staff`)の ID、[name] は担当者の氏名(画面の初期値。どちらも担当者の画面から渡す)。
final class AdminCreateUserDestination extends PageDestination<void> {
  const AdminCreateUserDestination({this.appUserId = '', this.name = ''});

  final String appUserId;
  final String name;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'appUserId': appUserId, 'name': name};
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> authFilesDestinationSamples = [
  LoginDestination(),
  LogoutDestination(),
  LogoutDestination(sessionExpired: true),
  SignupDestination(),
  PasswordResetRequestDestination(),
  AcceptCodeDestination(),
  NewPasswordDestination(),
  SharedFilesDestination(),
  AdminSignupsDestination(),
  AdminResetsDestination(),
  AdminCreateUserDestination(appUserId: 's1', name: '佐藤 健一'),
];
