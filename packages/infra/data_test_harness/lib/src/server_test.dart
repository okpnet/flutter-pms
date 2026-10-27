import 'package:flutter_test/flutter_test.dart';

import 'test_server.dart';

/// 検証用GraphQLサーバーを必要とするテストを登録する。
///
/// `server`タグが付くため、接続できない環境では `flutter test --exclude-tags server` で除外できる。
/// 除外しなくても、どのサーバーにも接続できなければテストを中止(skip)にし、失敗にはしない。
/// サーバーのデータを変更するテストには使わない(読み取り専用)。
///
/// 使うパッケージの `dart_test.yaml` に `server` タグの宣言が必要(警告を避けるため)。
void serverTest(
  String description,
  Future<void> Function(TestServer server) body, {
  Timeout? timeout,
}) {
  test(
    description,
    () async {
      final server = await TestServer.connect();
      if (server == null) {
        markTestSkipped(
          '${TestServer.candidateUrls.where((u) => u.isNotEmpty).join(' / ')} に接続できないためテストを中止した',
        );
        return;
      }
      await body(server);
    },
    tags: 'server',
    timeout: timeout,
  );
}
