import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';

/// PBKDF2(HMAC-SHA256)。[length] バイトの鍵を導出する。
///
/// 外部ライブラリは `crypto`(`Hmac`・`sha256`)だけを使う。
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

/// 裏設定へ入る条件(ユーザーIDとパスワード)の、ソルト付きハッシュ。平文は持たない。
///
/// アセットの設定に置く形(`salt`・`hash` は base64):
/// ```json
/// {"salt": "...", "iterations": 100000, "hash": "..."}
/// ```
/// ハッシュは、PBKDF2(HMAC-SHA256)で `"<ユーザーID>\u0000<パスワード>"` から導出した32バイト。
/// 作るには `dart run backstage:make_entry_hash`。
class EntryHash {
  const EntryHash({
    required this.salt,
    required this.iterations,
    required this.hash,
  });

  /// base64。
  final String salt;
  final int iterations;

  /// base64(32バイト)。
  final String hash;

  static const defaultIterations = 100000;
  static const _length = 32;

  static List<int> _material(String identity, String password) =>
      utf8.encode('${identity.trim()}\u0000$password');

  /// 新しいソルトでハッシュを作る。[salt] はテスト用(省略すると乱数)。
  static EntryHash create(
    String identity,
    String password, {
    int iterations = defaultIterations,
    List<int>? salt,
  }) {
    final s =
        salt ??
        (() {
          final random = Random.secure();
          return List<int>.generate(16, (_) => random.nextInt(256));
        })();
    final derived = pbkdf2HmacSha256(
      _material(identity, password),
      s,
      iterations,
      _length,
    );
    return EntryHash(
      salt: base64Encode(s),
      iterations: iterations,
      hash: base64Encode(derived),
    );
  }

  /// 設定(JSON のオブジェクト)から読む。形が違う・値が不正なときは null(入口なし)。
  static EntryHash? tryParse(Object? json) {
    if (json is! Map) return null;
    final salt = json['salt'];
    final hash = json['hash'];
    final iterations = json['iterations'];
    if (salt is! String || hash is! String || iterations is! int) return null;
    if (iterations < 1) return null;
    try {
      base64Decode(salt);
      if (base64Decode(hash).length != _length) return null;
    } on FormatException {
      return null;
    }
    return EntryHash(salt: salt, iterations: iterations, hash: hash);
  }

  /// 入力が一致するか。計算は重い(反復回数による)ので、UI を止めたくないときは別の isolate で呼ぶ。
  /// 比較は、一致した位置で打ち切らない(時間で分からないように)。
  bool verify(String identity, String password) {
    final expected = base64Decode(hash);
    final actual = pbkdf2HmacSha256(
      _material(identity, password),
      base64Decode(salt),
      iterations,
      _length,
    );
    var diff = expected.length ^ actual.length;
    for (var i = 0; i < expected.length && i < actual.length; i++) {
      diff |= expected[i] ^ actual[i];
    }
    return diff == 0;
  }

  Map<String, Object?> toJson() => {
    'salt': salt,
    'iterations': iterations,
    'hash': hash,
  };

  /// ログ・例外に値を出さない。
  @override
  String toString() => 'EntryHash(iterations: $iterations)';
}
