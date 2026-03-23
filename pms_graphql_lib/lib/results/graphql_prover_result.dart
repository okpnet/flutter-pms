import 'package:pms_graphql_lib/exceptions/graphql_provider_exception.dart';

sealed class GraphqlProverResult<T> {}

class Ok<T> extends GraphqlProverResult<T> {
  final T value;
  Ok(this.value);
  @override
  String toString() {
    return 'Ok:${value.toString()}';
  }
}

class Err<T> extends GraphqlProverResult<T> {
  final GraphqlProviderException error;
  final String? graphqlErrors;
  final T? data;
  Err(this.error, {this.graphqlErrors, this.data});
  @override
  String toString() {
    return 'Err:${data.toString()}\nexception:${error.toString()}\ngraphql_errors:$graphqlErrors';
  }
}
