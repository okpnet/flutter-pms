import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';

/// PBKDF2(HMAC-SHA256)。アプリ(`packages/features/backstage` の `EntryHash`)と同じ方式。
Uint8List pbkdf2HmacSha256(
  List<int> password,
  List<int> salt,
  int iterations,
  int length,
) {
  if (iterations < 1) throw ArgumentError.value(iterations, 'iterations');
  final hmac = Hmac(sha256, password);
  const hashLength = 32;
  final blocks = (length + hashLength - 1) ~/ hashLength;
  final out = BytesBuilder();
  for (var block = 1; block <= blocks; block++) {
    var u = hmac.convert([
      ...salt,
      (block >> 24) & 0xff,
      (block >> 16) & 0xff,
      (block >> 8) & 0xff,
      block & 0xff,
    ]).bytes;
    final t = Uint8List.fromList(u);
    for (var i = 1; i < iterations; i++) {
      u = hmac.convert(u).bytes;
      for (var j = 0; j < t.length; j++) {
        t[j] ^= u[j];
      }
    }
    out.add(t);
  }
  return Uint8List.fromList(out.toBytes().sublist(0, length));
}

/// 入口の条件のハッシュ(`{"salt","iterations","hash"}`)を作る。
/// 材料は `"<ユーザーID(前後の空白を除く)>\u0000<パスワード>"`、32バイト。
Map<String, Object> createEntry(
  String id,
  String password, {
  int iterations = 100000,
  List<int>? salt,
}) {
  final s = salt ?? (() {
    final r = Random.secure();
    return List<int>.generate(16, (_) => r.nextInt(256));
  })();
  final hash = pbkdf2HmacSha256(
    utf8.encode('${id.trim()}\u0000$password'),
    s,
    iterations,
    32,
  );
  return {
    'salt': base64.encode(s),
    'iterations': iterations,
    'hash': base64.encode(hash),
  };
}
