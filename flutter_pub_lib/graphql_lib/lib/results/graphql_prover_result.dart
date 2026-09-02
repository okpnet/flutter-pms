import '../exceptions/graphql_provider_exception.dart';

/// GraphQL通信の結果をResult方式で表すsealedな戻り値型。
/// 呼び出し側は例外をcatchするのではなく、[Ok] / [Err] をパターンマッチして扱うことを想定する。
sealed class GraphqlProverResult<T> {}

/// 通信が成功したことを表す。
class Ok<T> extends GraphqlProverResult<T> {
  /// 成功時に得られたデータ本体。
  final T value;
  Ok(this.value);
  @override
  String toString() {
    return 'Ok:${value.toString()}';
  }
}

/// 通信が失敗したことを表す。
class Err<T> extends GraphqlProverResult<T> {
  /// 失敗の原因を表す型付き例外。
  final GraphqlProviderException error;

  /// GraphQLサーバーから返された生のエラー文字列。存在しない場合はnull。
  final String? graphqlErrors;

  /// 失敗時に部分的に取得できたデータ。存在しない場合はnull。
  final T? data;
  Err(this.error, {this.graphqlErrors, this.data});
  @override
  String toString() {
    return 'Err:${data.toString()}\nexception:${error.toString()}\ngraphql_errors:$graphqlErrors';
  }
}
