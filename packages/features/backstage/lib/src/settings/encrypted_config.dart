import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:pointycastle/export.dart';

import 'backstage_settings.dart';

/// 暗号化した裏設定の形式(`tools/config_generator` が作る)。
/// `{"format":"pms-backstage-config","version":1,"iterations":N,"salt","nonce","data"}`
/// (AES-256-GCM。鍵は入口のパスワードから PBKDF2-HMAC-SHA256 で導出)。
const encryptedConfigFormat = 'pms-backstage-config';

/// 復号の実体。失敗(パスワード違い・改ざん・形式違い)は null。理由は区別しない。
String? decryptConfigText(String envelopeJson, String passphrase) {
  try {
    final m = jsonDecode(envelopeJson);
    if (m is! Map ||
        m['format'] != encryptedConfigFormat ||
        m['version'] != 1) {
      return null;
    }
    final iterations = m['iterations'];
    if (iterations is! int || iterations < 1 || iterations > 5000000) {
      return null;
    }
    final kdf = PBKDF2KeyDerivator(HMac(SHA256Digest(), 64))
      ..init(
        Pbkdf2Parameters(
          Uint8List.fromList(base64.decode(m['salt'] as String)),
          iterations,
          32,
        ),
      );
    final key = kdf.process(Uint8List.fromList(utf8.encode(passphrase)));
    final cipher = GCMBlockCipher(AESEngine())
      ..init(
        false,
        AEADParameters(
          KeyParameter(key),
          128,
          Uint8List.fromList(base64.decode(m['nonce'] as String)),
          Uint8List(0),
        ),
      );
    final plain = cipher.process(
      Uint8List.fromList(base64.decode(m['data'] as String)),
    );
    return utf8.decode(plain);
  } catch (_) {
    return null;
  }
}

String? _decryptRecord((String, String) args) =>
    decryptConfigText(args.$1, args.$2);

/// 暗号化した設定を、入口のパスワードで復号して裏設定にする(別の isolate)。
/// 復号できない・検証(URL の規則・知らないログのレベル)に通らないときは null(標準を使う)。
Future<BackstageSettings?> decryptBackstageSettings(
  String envelopeJson,
  String password,
) async {
  final plain = await compute(_decryptRecord, (envelopeJson, password));
  if (plain == null) return null;
  final settings = BackstageSettings.tryParse(plain);
  if (settings == null || settings.isEmpty) return null;
  if (BackstageUrlRules.validate(settings).isNotEmpty) return null;
  return settings;
}
