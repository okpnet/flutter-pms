import 'graphql_provider_exception.dart';

/// 認証のトークンを用意できなかったことを表す例外。
///
/// `AuthLink(getToken: ...)` のトークンを返す関数が、ログインしていない・セッションを破棄した
/// ときにこれを投げる。通信は行われず、結果は [SessionExpiredError]
/// ([SessionExpiredReason.missing])になる。トークンの取得先(認証サーバー)に
/// 接続できなかったとき([transient])は、セッションの問題ではないため [NetworkError] になる。
class SessionUnavailableException implements Exception {
  const SessionUnavailableException({
    this.transient = false,
    this.message = '',
  });

  /// 認証サーバーへの接続の失敗など、やり直せば取得できる可能性がある。
  final bool transient;

  /// 原因の説明(ログ用。トークン・パスワードは含めない)。
  final String message;

  Map<String, Object?> toJson() => {'transient': transient, 'message': message};

  @override
  String toString() =>
      'SessionUnavailableException(transient: $transient, $message)';
}

/// JWT の検証に失敗したときの GraphQL サーバー(PostGraphile / jsonwebtoken)のメッセージ。
final _invalidTokenMessage = RegExp(
  r'invalid token|invalid signature|invalid algorithm|jwt audience invalid|'
  r'jwt issuer invalid|jwt subject invalid|jwt signature is required|'
  r'jwt malformed|jwt not active|jwt must be provided|jwt id invalid',
  caseSensitive: false,
);

/// HTTP の [status]([401] または [403])と、応答のエラーメッセージから、セッションが使えない
/// 理由を分類する。JWT の失敗と分からない 403(権限の拒否など)は null。
SessionExpiredReason? sessionExpiredReasonOf(
  int status,
  Iterable<String> messages,
) {
  if (status == 401) return SessionExpiredReason.expired;
  if (status == 403 && messages.any(_invalidTokenMessage.hasMatch)) {
    return SessionExpiredReason.invalid;
  }
  return null;
}
