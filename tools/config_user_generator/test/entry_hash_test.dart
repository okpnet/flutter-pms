import 'package:config_user_generator/entry_hash.dart';
import 'package:test/test.dart';

/// アプリ(packages/features/backstage の EntryHash)と同じ値になること。
/// 同じ固定値を backstage/test/backstage_test.dart の「ツールとの互換」でも確認している。
void main() {
  test('固定のソルトで、アプリと同じハッシュになる', () {
    final e = createEntry(
      'admin1',
      'Pw-123',
      iterations: 1000,
      salt: List<int>.generate(16, (i) => i),
    );
    expect(e['salt'], 'AAECAwQFBgcICQoLDA0ODw==');
    expect(e['hash'], 'BG3ix/nFqKEQICQ38SfUrwqyWZ6VOtLOPXtTjtHbigY=');
  });

  test('IDの前後の空白は無視、パスワードは区別する', () {
    final salt = List<int>.filled(16, 1);
    final a = createEntry(' u ', 'p', iterations: 10, salt: salt);
    expect(a['hash'], createEntry('u', 'p', iterations: 10, salt: salt)['hash']);
    expect(a['hash'], isNot(createEntry('u', 'P', iterations: 10, salt: salt)['hash']));
  });
}
