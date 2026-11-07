import 'package:pbapi/pbapi.dart';

import 'i18n/strings_provider.dart';
import 'platform_file_gateway.dart';

/// 失敗を利用者向けの文言にする。ログの文言は多言語の対象にしない(ログは [PbException.logMessage])。
///
/// [codeEntry] が true のときは、入力の不備を「ユーザーIDまたはコードが正しくない」にする
/// (サーバーはコードの誤り・期限切れ・回数超過を区別しないため)。
String failureMessage(
  AuthFilesStrings t,
  Object error, {
  bool codeEntry = false,
}) {
  // サーバーの種類・アドレス・設定の有無は利用者に見せない(アクセス先の通知になるため)。
  if (error is JwtUnavailableException ||
      error is AuthServerUnconfiguredException) {
    return t.errors.connection;
  }
  if (error is ArgumentError) return t.errors.validation;
  if (error is UnsupportedError) return t.errors.fileUnsupported;
  if (error is FileTooLargeException) return t.errors.fileTooLarge;
  if (error is! PbException) return t.errors.unknown;
  return switch (error.kind) {
    PbFailureKind.validation =>
      codeEntry ? t.errors.codeInvalid : t.errors.validation,
    PbFailureKind.invalidCredentials => t.errors.invalidCredentials,
    PbFailureKind.unauthorized => t.errors.unauthorized,
    PbFailureKind.forbidden => t.errors.forbidden,
    PbFailureKind.notFound => t.errors.notFound,
    PbFailureKind.rateLimited => t.errors.rateLimited,
    PbFailureKind.unavailable => t.errors.unavailable,
    PbFailureKind.server || PbFailureKind.network => t.errors.connection,
    PbFailureKind.unknown => t.errors.unknown,
  };
}

/// ログインはできたが、GraphQL サーバー用の JWT を取得できなかった。
/// ログインは取り消し(セッションを破棄)、画面にメッセージを出す。
class JwtUnavailableException implements Exception {
  const JwtUnavailableException([this.cause]);

  /// 取得に失敗した原因(ログ用)。
  final Object? cause;

  @override
  String toString() => 'JwtUnavailableException($cause)';
}

/// 認証サーバーの接続先が未設定で、ログインできない([AuthMode.unconfigured])。
/// 裏設定で接続先を設定するよう、画面にメッセージを出す。
class AuthServerUnconfiguredException implements Exception {
  const AuthServerUnconfiguredException();

  @override
  String toString() => 'AuthServerUnconfiguredException()';
}

/// 接続先のサーバーの種類。利用者にはサーバー名・アドレスを見せず(アクセス先の通知になるため)、
/// ログにだけ、どの種類のサーバーが失敗したかを残す。
enum ServerType {
  /// メンテナンス情報サーバー(nginx)。
  maintenance,

  /// GraphQL サーバー(PostGraphile)。
  graphql,

  /// 認証サーバー(PocketBase)。
  authentication,
}

/// この機能の失敗のログの1行(`server=<種類>` つき)。アドレス・パスワード・コード・トークンは含めない。
///
/// この機能の通信は認証サーバー(PocketBase)だけ。GraphQL 用の JWT も認証サーバーが発行するため、
/// JWT の失敗は `authentication` で、原因が JWT であることを `cause` に残す。
String serverFailureLog(String operation, Object error) {
  const type = ServerType.authentication;
  final detail = switch (error) {
    PbException e => e.logMessage,
    JwtUnavailableException e => 'jwt: ${e.cause}',
    AuthServerUnconfiguredException _ => 'unconfigured',
    _ => '${error.runtimeType}',
  };
  return '[auth_files] $operation server=${type.name} $detail';
}
