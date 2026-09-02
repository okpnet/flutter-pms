sealed class GraphqlProviderException {
  String message;
  GraphqlProviderException(this.message);
  @override
  String toString() {
    return 'GraphqlProviderException:$message';
  }
}

class ProviderError extends GraphqlProviderException {
  ProviderError(super.message);
  @override
  String toString() {
    return 'ProviderError:$message';
  }
}

//接続できないネットワークエラー
//接続されていない
//URLを間違えている
//途中で切断された
class NetworkError extends GraphqlProviderException {
  NetworkError(super.message);
  @override
  String toString() {
    return 'NetworkError:$message';
  }
}

//接続
//問い合わせ中にタイムアウト
class TimeoutError extends GraphqlProviderException {
  TimeoutError(super.message);
  @override
  String toString() {
    return 'TimeoutError:$message';
  }
}

//
class ServerError extends GraphqlProviderException {
  final int status;
  ServerError(super.message, this.status);
  @override
  String toString() {
    return 'ServerError:\nstatus:$status\nmessage:$message';
  }
}

class DeveloperError extends GraphqlProviderException {
  Exception? internalExeption;
  DeveloperError(super.message, {this.internalExeption});
  @override
  String toString() {
    return 'DeveloperError:\nexception:${internalExeption.toString()}\nmesage:$message';
  }
}
