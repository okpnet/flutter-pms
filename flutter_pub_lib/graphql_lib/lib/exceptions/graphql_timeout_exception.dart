/// GraphQLのクエリ・ミューテーションがタイムアウトした際にスローされる例外。
final class GraphqlTimeoutException implements Exception {
  /// タイムアウトの詳細を表すメッセージ。
  final String? message;

  GraphqlTimeoutException._({this.message});

  /// [message] を指定して [GraphqlTimeoutException] を生成する。
  /// クエリ・ミューテーションの実行時間が制限時間を超えた場合に呼び出す。
  factory GraphqlTimeoutException({String? message}) {
    return GraphqlTimeoutException._(message: message);
  }

  @override
  String toString() => 'GraphqlTimeoutException: $message';
}
