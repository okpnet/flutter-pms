import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:pointycastle/export.dart';

/// 暗号化した設定の形式の識別子。
const configFormat = 'pms-backstage-config';
const configVersion = 1;
const defaultIterations = 200000;

class ConfigCryptoException implements Exception {
  ConfigCryptoException(this.message);
  final String message;
  @override
  String toString() => message;
}

Uint8List _deriveKey(String passphrase, List<int> salt, int iterations) {
  final kdf = PBKDF2KeyDerivator(HMac(SHA256Digest(), 64))
    ..init(Pbkdf2Parameters(Uint8List.fromList(salt), iterations, 32));
  return kdf.process(Uint8List.fromList(utf8.encode(passphrase)));
}

Uint8List _randomBytes(int n) {
  final r = Random.secure();
  return Uint8List.fromList(List<int>.generate(n, (_) => r.nextInt(256)));
}

Uint8List _gcm(bool encrypt, Uint8List key, Uint8List nonce, Uint8List data) {
  final cipher = GCMBlockCipher(AESEngine())
    ..init(encrypt, AEADParameters(KeyParameter(key), 128, nonce, Uint8List(0)));
  return cipher.process(data);
}

/// 設定(JSON の文字列)をパスフレーズで暗号化する。PBKDF2-HMAC-SHA256 で鍵を導出し、AES-256-GCM。
/// 結果は JSON(`format`・`version`・`kdf`・`iterations`・`salt`・`nonce`・`data`。バイナリは base64)。
/// [salt]・[nonce] はテスト用(省略すると乱数)。
String encryptConfig(
  String plainJson,
  String passphrase, {
  int iterations = defaultIterations,
  List<int>? salt,
  List<int>? nonce,
}) {
  final decoded = jsonDecode(plainJson); // JSON として正しいことを確認する
  if (decoded is! Map) {
    throw ConfigCryptoException('設定は JSON のオブジェクトにしてください。');
  }
  if (passphrase.isEmpty) {
    throw ConfigCryptoException('パスフレーズを入力してください。');
  }
  final s = Uint8List.fromList(salt ?? _randomBytes(16));
  final n = Uint8List.fromList(nonce ?? _randomBytes(12));
  final key = _deriveKey(passphrase, s, iterations);
  final data = _gcm(true, key, n, Uint8List.fromList(utf8.encode(plainJson)));
  return const JsonEncoder.withIndent('  ').convert({
    'format': configFormat,
    'version': configVersion,
    'kdf': 'pbkdf2-hmac-sha256',
    'iterations': iterations,
    'salt': base64.encode(s),
    'nonce': base64.encode(n),
    'data': base64.encode(data),
  });
}

/// [encryptConfig] の逆。パスフレーズの誤り・改ざんは [ConfigCryptoException]。
String decryptConfig(String envelopeJson, String passphrase) {
  try {
    final m = jsonDecode(envelopeJson);
    if (m is! Map ||
        m['format'] != configFormat ||
        m['version'] != configVersion) {
      throw ConfigCryptoException('暗号化した設定の形式ではありません。');
    }
    final key = _deriveKey(
      passphrase,
      base64.decode(m['salt'] as String),
      m['iterations'] as int,
    );
    final plain = _gcm(
      false,
      key,
      Uint8List.fromList(base64.decode(m['nonce'] as String)),
      Uint8List.fromList(base64.decode(m['data'] as String)),
    );
    return utf8.decode(plain);
  } on ConfigCryptoException {
    rethrow;
  } on InvalidCipherTextException {
    throw ConfigCryptoException('パスフレーズが違うか、ファイルが壊れています。');
  } on Exception {
    throw ConfigCryptoException('暗号化した設定を読めません。');
  }
}
