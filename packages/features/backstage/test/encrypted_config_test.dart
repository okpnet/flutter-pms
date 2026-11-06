import 'package:backstage/backstage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';

/// `tools/config_generator` が作る暗号化した設定(ツールで作った見本)。
/// 平文 {"logLevel":"warning","isChangeUserImage":true}、パスワード "entry-pass"、反復 1000。
const _sample = '{"format":"pms-backstage-config","version":1,"kdf":"pbkdf2-hmac-sha256","iterations":1000,"salt":"7S7oDwY7exxom0P4shCqJw==","nonce":"HPj/WKSm5e5Yhq+z","data":"K5qRVkR25GQdwaRqzSg/GzXUP/p5txUYyT2qj1ZWNXvq+lPsyU91UqkbKlUBFVFlfMER4vv5h44eHNqrZVm8"}';

void main() {
  test('入口のパスワードで復号できる。違うパスワードは null(標準)', () async {
    final ok = await decryptBackstageSettings(_sample, 'entry-pass');
    expect(ok?.logLevel, 'warning');
    expect(ok?.isChangeUserImage, isTrue);
    expect(await decryptBackstageSettings(_sample, 'wrong'), isNull);
    expect(await decryptBackstageSettings('{"a":1}', 'entry-pass'), isNull);
    expect(await decryptBackstageSettings('not json', 'entry-pass'), isNull);
  });

  group('入口を通ったとき', () {
    ProviderContainer open(BackstageSettings? stored) {
      final boot = BackstageBoot(
        store: InMemoryBackstageStore(),
        stored: stored,
        encryptedConfig: _sample,
      );
      final c = ProviderContainer(
        overrides: [
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          backstageBootProvider.overrideWithValue(boot),
        ],
      );
      addTearDown(c.dispose);
      return c;
    }

    test('保管庫が空なら、復号した値を保存する', () async {
      final c = open(null);
      await c.read(backstageControllerProvider.notifier).applyEncryptedConfig('entry-pass');
      expect(c.read(backstageControllerProvider).logLevel, 'warning');
    });

    test('パスワードが違えば何も変えない', () async {
      final c = open(null);
      await c.read(backstageControllerProvider.notifier).applyEncryptedConfig('wrong');
      expect(c.read(backstageControllerProvider).isEmpty, isTrue);
    });

    test('保管庫に値があれば上書きしない', () async {
      final c = open(const BackstageSettings(logLevel: 'error'));
      await c.read(backstageControllerProvider.notifier).applyEncryptedConfig('entry-pass');
      expect(c.read(backstageControllerProvider).logLevel, 'error');
    });
  });
}
