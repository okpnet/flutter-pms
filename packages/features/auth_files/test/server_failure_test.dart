import 'package:auth_files/src/i18n/strings.g.dart';
import 'package:auth_files/src/failure_message.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pbapi/pbapi.dart';

void main() {
  const ja = '''サーバーに接続できませんでした。''';

  test('接続に関する失敗は、種類によらず同じ文言だけを利用者に見せる', () {
    final t = AuthFilesLocale.ja.buildSync();
    final errors = <Object>[
      const PbException(PbFailureKind.network),
      const PbException(PbFailureKind.server, statusCode: 500),
      const JwtUnavailableException('x'),
      const AuthServerUnconfiguredException(),
    ];
    for (final e in errors) {
      expect(failureMessage(t, e), ja);
    }
  });

  test('利用者の文言に、サーバー名・アドレス・設定の案内を含めない', () {
    final t = AuthFilesLocale.ja.buildSync();
    final text = failureMessage(
      t,
      const PbException(
        PbFailureKind.network,
        message: 'http://192.168.1.100:8090 refused',
      ),
    );
    expect(text, isNot(contains('192.168')));
    expect(text, isNot(contains('裏設定')));
    expect(text, isNot(contains('PocketBase')));
  });

  test('ログには、サーバーの種類と失敗の内容を残す(アドレス・秘密は含めない)', () {
    final log = serverFailureLog(
      'login',
      const PbException(PbFailureKind.network, operation: 'login'),
    );
    expect(log, contains('server=authentication'));
    expect(log, contains('network'));
    expect(
      serverFailureLog('login', const JwtUnavailableException('boom')),
      allOf(contains('server=authentication'), contains('jwt')),
    );
    expect(
      serverFailureLog('login', const AuthServerUnconfiguredException()),
      contains('unconfigured'),
    );
  });

  test('サーバーの種類は3つ', () {
    expect(ServerType.values.map((e) => e.name), [
      'maintenance',
      'graphql',
      'authentication',
    ]);
  });
}
