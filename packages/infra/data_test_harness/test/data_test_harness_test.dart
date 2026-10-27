import 'dart:io';

import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RecordingDataRepository', () {
    test('呼び出しを記録し、固定の結果を返す', () async {
      final repo = RecordingDataRepository<List<int>>(result: [1, 2]);
      expect(await repo.find(take: 10, skip: 5), [1, 2]);
      expect(repo.calls, hasLength(1));
      expect(repo.calls.single.take, 10);
      expect(repo.calls.single.skip, 5);
      expect(repo.calls.single.predicate, isNull);
    });

    test('onFindがあれば呼び出しごとに結果を変えられる(resultより優先)', () async {
      final repo = RecordingDataRepository<int>(
        result: 0,
        onFind: (call) async => call.take * 2,
      );
      expect(await repo.find(take: 3), 6);
    });

    test('結果の指定が無ければStateError', () {
      final repo = RecordingDataRepository<int>();
      expect(() => repo.find(take: 1), throwsStateError);
    });
  });

  group('TestServer', () {
    test('接続できる候補のうち、先に接続できたものを返す', () async {
      final socket = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
      addTearDown(socket.close);
      final reachable = 'http://127.0.0.1:${socket.port}/graphql';

      // 空文字(未指定のdart-define)は無視し、接続できない候補は飛ばす。
      final server = await TestServer.connect(
        candidates: ['', 'http://127.0.0.1:1/graphql', reachable],
        timeout: const Duration(seconds: 1),
      );
      expect(server, isNotNull);
      expect(server!.url, reachable);
      expect(server.toJson(), {'url': reachable});
    });

    test('どれにも接続できなければnull', () async {
      final server = await TestServer.connect(
        candidates: ['http://127.0.0.1:1/graphql', 'not a url'],
        timeout: const Duration(seconds: 1),
      );
      expect(server, isNull);
    });
  });
}
