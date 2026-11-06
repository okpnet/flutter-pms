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
  if (error is JwtUnavailableException) return t.errors.jwtUnavailable;
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
    PbFailureKind.server => t.errors.server,
    PbFailureKind.network => t.errors.network,
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
