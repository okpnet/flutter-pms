/// PostGraphile のカスタムスカラーと Dart の型の変換関数。
///
/// 各モデルパッケージの `build.yaml`(graphql_codegen の `scalars`)から
/// `fromJsonXxx` / `toJsonXxx` として参照する。
library;

import 'dart:convert';

/// `Datetime`(ISO 8601 の文字列)を [DateTime] にする。
DateTime fromJsonDatetime(dynamic json) => DateTime.parse(json as String);

/// [DateTime] を `Datetime` の文字列にする。
String toJsonDatetime(DateTime value) => value.toIso8601String();

/// `BigInt`(PostGraphile は文字列で返す)を [BigInt] にする。数値で届いた場合も受け付ける。
BigInt fromJsonBigInt(dynamic json) =>
    json is BigInt ? json : BigInt.parse(json.toString());

/// [BigInt] を `BigInt` の文字列にする。
String toJsonBigInt(BigInt value) => value.toString();

/// `JSON`(DB の jsonb)を値にする。PostGraphile v4 は JSON を、JSON の文字列として返す(文字列でなく値で届いた場合も受け付ける)。
dynamic fromJsonJson(dynamic json) => json is String ? jsonDecode(json) : json;

/// 値を `JSON` として送る。PostGraphile v4 は、JSON の文字列を受け取る(`jsonEncode` できる値: 配列・オブジェクト・文字列・数値)。
String toJsonJson(dynamic value) => jsonEncode(value);
