import 'package:pms_graphql/pms_graphql.dart';

/// [run]がタイムアウトで終わったか。
///
/// `GraphQLClientProvider.query`は、制限時間を超えると `GraphqlTimeoutException` を投げるが、
/// 通信層のタイムアウトが同時に起きると `Err(TimeoutError)` で返ることがある。どちらも
/// 「制限時間内に応答が無かった」という同じ結果として扱う。
Future<bool> endedInTimeout(
  Future<GraphqlProverResult<Map<dynamic, dynamic>>> Function() run,
) async {
  try {
    final result = await run();
    return switch (result) {
      Err(:final error) => error is TimeoutError,
      Ok() => false,
    };
  } on GraphqlTimeoutException {
    return true;
  }
}
