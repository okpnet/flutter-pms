/// GraphQL通信で発生したエラーを表す例外の基底クラス。
sealed class GraphqlProviderException {
  /// エラー内容を表すメッセージ。
  String message;
  GraphqlProviderException(this.message);
  @override
  String toString() {
    return 'GraphqlProviderException:$message';
  }
}

/// 他のサブタイプに分類できない、プロバイダー由来の汎用エラーを表す。
class ProviderError extends GraphqlProviderException {
  ProviderError(super.message);
  @override
  String toString() {
    return 'ProviderError:$message';
  }
}

/// 接続できないネットワークエラーを表す。
/// 接続されていない、URLを間違えている、通信が途中で切断された場合などに発生する。
class NetworkError extends GraphqlProviderException {
  NetworkError(super.message);
  @override
  String toString() {
    return 'NetworkError:$message';
  }
}

/// 接続時や問い合わせ中にタイムアウトが発生したことを表す。
class TimeoutError extends GraphqlProviderException {
  TimeoutError(super.message);
  @override
  String toString() {
    return 'TimeoutError:$message';
  }
}

/// サーバー側でエラーが発生したことを表す。
class ServerError extends GraphqlProviderException {
  /// エラー発生時のHTTPステータスコード。取得できない場合は呼び出し側で -1 等が設定される。
  final int status;
  ServerError(super.message, this.status);
  @override
  String toString() {
    return 'ServerError:\nstatus:$status\nmessage:$message';
  }
}

/// 開発者側の実装ミスや想定外の例外など、ライブラリ利用者側で対処すべきエラーを表す。
class DeveloperError extends GraphqlProviderException {
  /// 変換元となった内部例外。存在しない場合はnull。
  Exception? internalExeption;
  DeveloperError(super.message, {this.internalExeption});
  @override
  String toString() {
    return 'DeveloperError:\nexception:${internalExeption.toString()}\nmesage:$message';
  }
}

/// 認証のセッションが使えない理由。
enum SessionExpiredReason {
  /// JWT の期限が切れた(HTTP 401 `jwt expired`)。トークンを取り直せば続けられる。
  expired,

  /// JWT が不正(署名・audience・アルゴリズムの不一致など。HTTP 403)。取り直すか、ログインし直す。
  invalid,

  /// セッションが無く、JWT を用意できなかった(ログインしていない・破棄した)。通信は行っていない。
  missing,
}

/// 認証のセッションが無効なことを表す。データは取得されていない。
///
/// 画面は、トークンを取り直して再試行するか、ログイン画面へ戻す。
/// 認証の失敗(401/403)を表す [ServerError] の一種で、[status] はそのHTTPステータス
/// ([SessionExpiredReason.missing] は通信していないため -1)。
class SessionExpiredError extends ServerError {
  /// セッションが使えない理由。
  final SessionExpiredReason reason;
  SessionExpiredError(super.message, super.status, this.reason);
  @override
  String toString() {
    return 'SessionExpiredError:\nreason:${reason.name}\nstatus:$status\nmessage:$message';
  }
}

/// DB の権限が無く、データを取得・更新できなかったことを表す。
///
/// JWT なし(匿名)のリクエストや、ロールに権限が無い操作で起こる(HTTP 200 の GraphQL エラー、
/// または HTTP 500 `permission denied to set role`)。PostGraphile は匿名と権限不足を区別しないため、
/// セッションの有無はアプリが [SessionExpiredReason.missing] で判断する。
class PermissionDeniedError extends GraphqlProviderException {
  PermissionDeniedError(super.message);
  @override
  String toString() {
    return 'PermissionDeniedError:$message';
  }
}
