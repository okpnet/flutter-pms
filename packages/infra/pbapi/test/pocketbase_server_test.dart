// テスト用 PocketBase(http://192.168.1.103:8090)への実接続テスト。
//
// データを作らない・変更しない。接続できないときはテストを中止(skip)する。
// ネットワークが無い環境では `flutter test --exclude-tags server` で除外できる。
// 利用者・招待を要するテスト(ログイン成功・登録・ファイル)は、サーバーのデータを増やすため含めない。
@Tags(['server'])
library;

import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:pbapi/pbapi.dart';

import 'support/fake_pocketbase.dart';

const _url = String.fromEnvironment(
  'PMS_TEST_POCKETBASE_URL',
  defaultValue: 'http://192.168.1.103:8090/api',
);

Future<bool> _reachable() async {
  final uri = Uri.parse(_url);
  try {
    final socket = await Socket.connect(
      uri.host,
      uri.port,
      timeout: const Duration(seconds: 3),
    );
    socket.destroy();
    return true;
  } catch (_) {
    return false;
  }
}

void main() {
  late bool reachable;
  setUpAll(() async => reachable = await _reachable());

  Future<void> Function() onServer(Future<void> Function() body) => () async {
    if (!reachable) {
      markTestSkipped('$_url に接続できないためテストを中止した');
      return;
    }
    await body();
  };

  test(
    '存在しないユーザーのログインはinvalidCredentials(またはrateLimited)',
    onServer(() async {
      final connection = await PbConnection.open(
        url: _url,
        logger: RecordingLogger(),
      );
      final session = SessionService(connection);
      try {
        await session.login('no.such.user.pbapi.test', 'wrong-password-1');
        fail('ログインできてはいけません');
      } on PbException catch (e) {
        expect(
          e.kind,
          anyOf(PbFailureKind.invalidCredentials, PbFailureKind.rateLimited),
        );
      }
      expect(session.current, isNull);
      // 未ログインでは確認は通信せずfalse。
      expect(await session.ensureSession(), isFalse);
    }),
  );

  test(
    '未ログインで共有ファイルを参照すると、権限エラー(または空)になる',
    onServer(() async {
      final connection = await PbConnection.open(
        url: _url,
        logger: RecordingLogger(),
      );
      final files = SharedFileService(connection);
      try {
        final found = await files.latest('pbapi-test-not-exists');
        expect(found, isNull);
      } on PbException catch (e) {
        expect(
          e.kind,
          anyOf(PbFailureKind.unauthorized, PbFailureKind.forbidden),
        );
      }
    }),
  );
}
