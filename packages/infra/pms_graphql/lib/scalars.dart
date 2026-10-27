/// PostGraphile のカスタムスカラーと Dart の型の変換関数。
///
/// 各モデルパッケージの `build.yaml`(graphql_codegen の `scalars`)から
/// `fromJsonXxx` / `toJsonXxx` として参照する。
library;

/// `Datetime`(ISO 8601 の文字列)を [DateTime] にする。
DateTime fromJsonDatetime(dynamic json) => DateTime.parse(json as String);

/// [DateTime] を `Datetime` の文字列にする。
String toJsonDatetime(DateTime value) => value.toIso8601String();

/// `BigInt`(PostGraphile は文字列で返す)を [BigInt] にする。数値で届いた場合も受け付ける。
BigInt fromJsonBigInt(dynamic json) =>
    json is BigInt ? json : BigInt.parse(json.toString());

/// [BigInt] を `BigInt` の文字列にする。
String toJsonBigInt(BigInt value) => value.toString();
