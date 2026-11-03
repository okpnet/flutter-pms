import 'dart:convert';

import 'package:crypto/crypto.dart';

String _b64(List<int> bytes) => base64Url.encode(bytes).replaceAll('=', '');

Map<String, Object?> _decodePart(String part) => Map<String, Object?>.from(
  jsonDecode(utf8.decode(base64Url.decode(base64Url.normalize(part)))) as Map,
);

/// JWT の本文(クレーム)。署名は検証しない。
Map<String, Object?> claimsOf(String jwt) => _decodePart(jwt.split('.')[1]);

/// JWT のヘッダー。
Map<String, Object?> headerOf(String jwt) => _decodePart(jwt.split('.')[0]);

/// 検証用の JWT を作る。[secret] で署名する(HS256/384/512)。[alg] が `none` のときは署名なし。
String forgeJwt({
  required String secret,
  required Map<String, Object?> claims,
  String alg = 'HS256',
}) {
  final header = _b64(utf8.encode(jsonEncode({'alg': alg, 'typ': 'JWT'})));
  final payload = _b64(utf8.encode(jsonEncode(claims)));
  final signing = '$header.$payload';
  if (alg == 'none') return '$signing.';
  final hash = switch (alg) {
    'HS256' => sha256,
    'HS384' => sha384,
    'HS512' => sha512,
    _ => throw ArgumentError.value(alg, 'alg'),
  };
  final signature = Hmac(
    hash,
    utf8.encode(secret),
  ).convert(utf8.encode(signing));
  return '$signing.${_b64(signature.bytes)}';
}

/// 既存の JWT の本文だけを差し替える(署名はそのまま = 改ざん)。
String tamperClaims(String jwt, Map<String, Object?> changes) {
  final parts = jwt.split('.');
  final claims = {...claimsOf(jwt), ...changes};
  return '${parts[0]}.${_b64(utf8.encode(jsonEncode(claims)))}.${parts[2]}';
}

/// 現在から [offset] 後の `exp`(秒)。
int expIn(Duration offset) =>
    DateTime.now().add(offset).millisecondsSinceEpoch ~/ 1000;
