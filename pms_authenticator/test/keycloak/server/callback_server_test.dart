import 'dart:async';
import 'dart:io';

import 'package:pms_authenticator/keycloak/server/callback/callback_server.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CallbackServer', () {
    late CallbackServer server;
    String? receivedCode;
    bool failureCalled = false;

    setUp(() async {
      receivedCode = null;
      failureCalled = false;
      server = CallbackServer(url: 'http://127.0.0.1/callback');
      await server.init(
        (code) {
          receivedCode = code;
        },
        failerDelegate: () {
          failureCalled = true;
        },
      );
    });

    tearDown(() {
      server.dispose();
    });

    test('サーバーは起動している', () {
      expect(server.port, isNotNull);
    });

    test('コード付きリクエストでcompleteDelegateが呼ばれる', () async {
      final port = server.port!;
      final uri = Uri.parse('http://127.0.0.1:$port/?code=test123');
      final client = HttpClient();
      final request = await client.getUrl(uri);
      await request.close();

      // 少し待ってコールバックが呼ばれるのを確認
      await Future.delayed(const Duration(milliseconds: 100));
      expect(receivedCode, 'test123');
      expect(failureCalled, isFalse);
    });

    test('コード無しリクエストでfailerDelegateが呼ばれる', () async {
      final port = server.port!;
      final uri = Uri.parse('http://127.0.0.1:$port/');
      final client = HttpClient();
      final request = await client.getUrl(uri);
      await request.close();

      await Future.delayed(const Duration(milliseconds: 100));
      expect(receivedCode, isNull);
      expect(failureCalled, isTrue);
    });
  });
}
