import 'dart:convert';

import 'package:config_generator/config_crypto.dart';
import 'package:test/test.dart';

void main() {
  const plain = '{"defaults":{"logLevel":"info"}}';

  test('暗号化して復号すると元に戻る。平文は出力に含まれない', () {
    final enc = encryptConfig(plain, 'pass-1', iterations: 1000);
    expect(enc, isNot(contains('logLevel')));
    expect(decryptConfig(enc, 'pass-1'), plain);
    final m = jsonDecode(enc) as Map;
    expect(m['format'], configFormat);
    expect(m['version'], configVersion);
  });

  test('ソルトとナンスが毎回変わる', () {
    expect(
      encryptConfig(plain, 'p', iterations: 1000),
      isNot(encryptConfig(plain, 'p', iterations: 1000)),
    );
  });

  test('パスフレーズが違う・改ざんは例外', () {
    final enc = encryptConfig(plain, 'right', iterations: 1000);
    expect(
      () => decryptConfig(enc, 'wrong'),
      throwsA(isA<ConfigCryptoException>()),
    );
    final m = jsonDecode(enc) as Map<String, Object?>;
    final data = base64.decode(m['data'] as String);
    data[0] ^= 1;
    m['data'] = base64.encode(data);
    expect(
      () => decryptConfig(jsonEncode(m), 'right'),
      throwsA(isA<ConfigCryptoException>()),
    );
  });

  test('JSON でない・形式が違う・空のパスフレーズ', () {
    expect(() => encryptConfig('[1]', 'p'), throwsA(isA<ConfigCryptoException>()));
    expect(() => encryptConfig(plain, ''), throwsA(isA<ConfigCryptoException>()));
    expect(
      () => decryptConfig('{"a":1}', 'p'),
      throwsA(isA<ConfigCryptoException>()),
    );
  });
}
