sealed class GraphqlProviderException {
  const GraphqlProviderException();
}

class ProviderkError extends GraphqlProviderException {
  const ProviderkError();
}

class NetworkError extends GraphqlProviderException {
  const NetworkError();
}

class TimeoutError extends GraphqlProviderException {
  const TimeoutError();
}

class ServerError extends GraphqlProviderException {
  final int status;
  const ServerError(this.status);
}

class DeveloperError extends GraphqlProviderException {
  final String message;
  const DeveloperError(this.message);
}
