import 'package:pms_graphql_lib/exceptions/graphql_provider_exception.dart';

sealed class GraphqlProverResult<T> {}

class Ok<T> extends GraphqlProverResult<T> {
  final T value;
  Ok(this.value);
}

class Err<T> extends GraphqlProverResult<T> {
  final GraphqlProviderException error;
  Err(this.error);
}
