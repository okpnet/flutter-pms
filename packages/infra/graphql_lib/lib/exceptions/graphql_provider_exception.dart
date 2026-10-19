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
