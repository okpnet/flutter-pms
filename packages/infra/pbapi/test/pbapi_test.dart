import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:pbapi/pbapi.dart';

import 'support/fake_pocketbase.dart';

void main() {
  group('PbEndpoint', () {
    test('末尾の /api と / を取り除く', () {
      expect(
        PbEndpoint.parse('http://192.168.1.103:8090/api').baseUrl,
        'http://192.168.1.103:8090',
      );
      expect(
        PbEndpoint.parse('https://pb.example.com/api/').baseUrl,
        'https://pb.example.com',
      );
      expect(
        PbEndpoint.parse('https://example.com/pb/api').baseUrl,
        'https://example.com/pb',
      );
    });

    test('平文の http は、ローカルのネットワークだけ許す', () {
      for (final ok in [
        'http://localhost:8090',
        'http://127.0.0.1:8090',
        'http://10.0.0.5',
        'http://172.16.0.1',
        'http://192.168.9.245:8090',
        'http://pi.local:8090',
      ]) {
        expect(() => PbEndpoint.parse(ok), returnsNormally, reason: ok);
      }
      for (final ng in [
        'http://example.com',
        'http://8.8.8.8',
        'http://172.32.0.1',
        'ftp://localhost',
        'localhost',
        '',
      ]) {
        expect(() => PbEndpoint.parse(ng), throwsArgumentError, reason: ng);
      }
    });
  });

  group('ログイン・ログアウト', () {
    late FakePocketBase server;
    late InMemoryTokenStore store;
    late RecordingLogger logger;

    setUp(() {
      server = FakePocketBase();
      store = InMemoryTokenStore();
      logger = RecordingLogger();
    });

    test('ログインでトークンを返し、保存先に残る。toJsonにトークンは含まれない', () async {
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json(authBody()),
      );
      final session = SessionService(
        await server.open(tokenStore: store, logger: logger),
      );
      final result = await session.login('  tanaka.t ', 'pass1234');

      expect(result.token, isNotEmpty);
      expect(result.username, 'tanaka.t');
      expect(result.appUserId, 'U0001');
      expect(result.expiresAt, isNotNull);
      expect(result.toJson().containsKey('token'), isFalse);
      expect(jsonEncode(result.toJson()), isNot(contains(result.token)));
      expect(session.current?.userId, 'u1');
      expect(await store.read(), contains(result.token));
      // 入力の前後の空白は取り除いて送る。
      final sent = jsonDecode(
        server
            .where('POST', '/api/collections/users/auth-with-password')
            .single
            .body,
      );
      expect(sent['identity'], 'tanaka.t');
      expect(logger.errors, isEmpty);
    });

    test('保存済みのトークンから復元する。期限切れは捨てる', () async {
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json(authBody()),
      );
      await SessionService(
        await server.open(tokenStore: store),
      ).login('a', 'b');

      final restored = SessionService(await server.open(tokenStore: store));
      expect(restored.current?.username, 'tanaka.t');

      final expired = InMemoryTokenStore();
      await expired.write(
        jsonEncode({
          'token': fakeJwt(validFor: const Duration(days: -1)),
          'model': authBody()['record'],
        }),
      );
      final dropped = SessionService(await server.open(tokenStore: expired));
      expect(dropped.current, isNull);
      // 保存先の削除は非同期のキューで行われる。
      await Future<void>.delayed(Duration.zero);
      expect(await expired.read(), isNull);
    });

    test('ID/パスワードの不一致はinvalidCredentials。エラーログには残さない', () async {
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json({
          'status': 400,
          'message': 'Failed to authenticate.',
          'data': {},
        }, status: 400),
      );
      final session = SessionService(await server.open(logger: logger));
      await expectLater(
        session.login('x', 'y'),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.invalidCredentials,
          ),
        ),
      );
      expect(session.current, isNull);
      expect(logger.errors, isEmpty);
    });

    test('試行が多すぎればrateLimited', () async {
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json({'status': 429, 'message': 'Too many'}, status: 429),
      );
      final session = SessionService(await server.open());
      await expectLater(
        session.login('x', 'y'),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.rateLimited,
          ),
        ),
      );
    });

    test('ログアウトでトークンを破棄する', () async {
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json(authBody()),
      );
      final session = SessionService(await server.open(tokenStore: store));
      await session.login('a', 'b');
      await session.logout();
      expect(session.current, isNull);
      expect(await store.read(), isNull);
    });
  });

  group('セッション確認', () {
    late FakePocketBase server;
    late RecordingLogger logger;

    setUp(() {
      server = FakePocketBase();
      logger = RecordingLogger();
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json(authBody()),
      );
    });

    test('未ログインならfalse(通信しない)', () async {
      final session = SessionService(await server.open());
      expect(await session.ensureSession(), isFalse);
      expect(server.requests, isEmpty);
    });

    test('有効ならtrue。minInterval内は問い合わせを省く', () async {
      server.on(
        'POST',
        '/api/collections/users/auth-refresh',
        (r) => server.json(authBody()),
      );
      final session = SessionService(await server.open());
      await session.login('a', 'b');
      expect(await session.ensureSession(), isTrue);
      expect(
        server.where('POST', '/api/collections/users/auth-refresh'),
        hasLength(1),
      );
      expect(
        await session.ensureSession(minInterval: const Duration(minutes: 1)),
        isTrue,
      );
      expect(
        server.where('POST', '/api/collections/users/auth-refresh'),
        hasLength(1),
      );
    });

    test('サーバーが401ならトークンを破棄してfalse', () async {
      server.on(
        'POST',
        '/api/collections/users/auth-refresh',
        (r) => server.json({'status': 401, 'message': 'expired'}, status: 401),
      );
      final session = SessionService(await server.open());
      await session.login('a', 'b');
      expect(await session.ensureSession(), isFalse);
      expect(session.current, isNull);
    });

    test('通信できないときは有効/無効を決めず、networkを投げてトークンを残す', () async {
      final session = SessionService(await server.open(logger: logger));
      await session.login('a', 'b');
      server.offline = true;
      await expectLater(
        session.ensureSession(),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.network,
          ),
        ),
      );
      expect(session.current, isNotNull);
      expect(logger.errors.single, startsWith('[pbapi] ensureSession'));
    });

    test('watchは定期的に確認して結果を流し、通信できない回は流さない', () async {
      var calls = 0;
      server.on('POST', '/api/collections/users/auth-refresh', (r) {
        calls++;
        return calls == 2
            ? server.json({'status': 500, 'message': 'boom'}, status: 500)
            : server.json(authBody());
      });
      final session = SessionService(await server.open(logger: logger));
      await session.login('a', 'b');
      final results = await session
          .watch(interval: const Duration(milliseconds: 5))
          .take(2)
          .toList();
      expect(results, [true, true]);
      expect(calls, 3); // 2回目(500)は流れない
    });
  });

  group('新規登録・パスワード', () {
    late FakePocketBase server;
    late AccountService account;
    late SessionService session;

    setUp(() async {
      server = FakePocketBase();
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json(authBody()),
      );
      final connection = await server.open();
      session = SessionService(connection);
      account = AccountService(connection, session);
    });

    test('招待コードで登録し、そのままログインする', () async {
      server.on(
        'POST',
        '/api/app/invites/accept',
        (r) => server.json({'ok': true}),
      );
      final result = await account.register(
        username: ' tanaka.t ',
        inviteCode: ' abcd2345efgh ',
        password: 'pass1234',
      );
      expect(result.username, 'tanaka.t');
      final sent = jsonDecode(
        server.where('POST', '/api/app/invites/accept').single.body,
      );
      expect(sent['username'], 'tanaka.t');
      expect(sent['code'], 'abcd2345efgh');
      expect(sent['passwordConfirm'], 'pass1234');
    });

    test('招待が無効ならvalidationで、サーバーの説明を持つ', () async {
      server.on(
        'POST',
        '/api/app/invites/accept',
        (r) => server.json({
          'status': 400,
          'message': 'Invalid invite.',
          'data': {
            'code': {'code': 'invalid', 'message': '招待コードが違います'},
          },
        }, status: 400),
      );
      await expectLater(
        account.register(username: 'a', inviteCode: 'x', password: 'pass1234'),
        throwsA(
          isA<PbException>()
              .having((e) => e.kind, 'kind', PbFailureKind.validation)
              .having((e) => e.fieldErrors['code'], 'code', '招待コードが違います'),
        ),
      );
      expect(session.current, isNull);
    });

    test('短いパスワードは通信せずArgumentError(値は例外に出さない)', () async {
      await expectLater(
        account.register(username: 'a', inviteCode: 'x', password: 'short'),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.toString(),
            'message',
            isNot(contains('short')),
          ),
        ),
      );
      expect(server.requests, isEmpty);
    });

    test('パスワード変更は古いパスワードを送り、新しいパスワードで入り直す', () async {
      await session.login('tanaka.t', 'old-pass-1');
      server.on(
        'PATCH',
        '/api/collections/users/records/u1',
        (r) => server.json(authBody()['record']),
      );
      await account.changePassword(
        oldPassword: 'old-pass-1',
        newPassword: 'new-pass-2',
      );
      final sent = jsonDecode(
        server.where('PATCH', '/api/collections/users/records/u1').single.body,
      );
      expect(sent['oldPassword'], 'old-pass-1');
      expect(sent['password'], 'new-pass-2');
      expect(sent['passwordConfirm'], 'new-pass-2');
      final logins = server.where(
        'POST',
        '/api/collections/users/auth-with-password',
      );
      expect(jsonDecode(logins.last.body)['password'], 'new-pass-2');
    });

    test('古いパスワードが違えばvalidation(oldPassword)。未ログインはunauthorized', () async {
      await expectLater(
        account.changePassword(oldPassword: 'a', newPassword: 'new-pass-2'),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.unauthorized,
          ),
        ),
      );
      await session.login('tanaka.t', 'x');
      server.on(
        'PATCH',
        '/api/collections/users/records/u1',
        (r) => server.json({
          'status': 400,
          'message': 'Failed to update record.',
          'data': {
            'oldPassword': {
              'code': 'validation_invalid_old_password',
              'message': 'Missing or invalid old password.',
            },
          },
        }, status: 400),
      );
      await expectLater(
        account.changePassword(
          oldPassword: 'wrong-old',
          newPassword: 'new-pass-2',
        ),
        throwsA(
          isA<PbException>().having(
            (e) => e.fieldErrors.containsKey('oldPassword'),
            'oldPassword',
            isTrue,
          ),
        ),
      );
    });

    test('再設定メールの依頼とコードでの再設定', () async {
      server.on(
        'POST',
        '/api/collections/users/request-password-reset',
        (r) => http204(),
      );
      server.on(
        'POST',
        '/api/collections/users/confirm-password-reset',
        (r) => http204(),
      );
      await account.requestPasswordReset(' a@example.com ');
      await account.confirmPasswordReset(
        token: ' tok ',
        newPassword: 'new-pass-2',
      );
      expect(
        jsonDecode(
          server
              .where('POST', '/api/collections/users/request-password-reset')
              .single
              .body,
        )['email'],
        'a@example.com',
      );
      final confirm = jsonDecode(
        server
            .where('POST', '/api/collections/users/confirm-password-reset')
            .single
            .body,
      );
      expect(confirm['token'], 'tok');
      expect(confirm['passwordConfirm'], 'new-pass-2');
    });

    test('管理者への依頼は、連絡手段が無ければnotConfigured。あれば呼ぶ', () async {
      await expectLater(
        account.requestAdminPasswordReset('tanaka.t'),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.notConfigured,
          ),
        ),
      );
      final contact = _FakeAdminContact();
      final withContact = AccountService(
        await server.open(),
        session,
        adminContact: contact,
      );
      await withContact.requestAdminPasswordReset(' tanaka.t ');
      expect(contact.requested, ['tanaka.t']);
    });
  });

  group('共有ファイル', () {
    late FakePocketBase server;
    late SharedFileService files;

    Map<String, Object?> record(int revision, {String id = 'r1'}) => {
      'id': id,
      'collectionId': 'c_files',
      'collectionName': 'app_files',
      'app_file_id': 'doc-1',
      'revision': revision,
      'file': 'a_xyz.txt',
      'original_name': 'a.txt',
      'size_bytes': 3,
      'mime_type': 'text/plain',
      'uploaded_by': 'u1',
    };

    setUp(() async {
      server = FakePocketBase();
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json(authBody()),
      );
      final connection = await server.open();
      await SessionService(connection).login('a', 'b');
      files = SharedFileService(connection);
      server.requests.clear();
    });

    test('未ログインは通信せずunauthorized(空の一覧を「見つからない」と取り違えない)', () async {
      final anonymous = SharedFileService(await FakePocketBase().open());
      for (final call in <Future<Object?> Function()>[
        () => anonymous.latest('doc-1'),
        () => anonymous.history('doc-1'),
        () => anonymous.download('doc-1'),
        () => anonymous.upload(
          appFileId: 'doc-1',
          bytes: Uint8List(1),
          filename: 'a',
        ),
      ]) {
        await expectLater(
          call(),
          throwsA(
            isA<PbException>().having(
              (e) => e.kind,
              'kind',
              PbFailureKind.unauthorized,
            ),
          ),
        );
      }
    });

    test('アップロードはIDと版を返す', () async {
      server.on(
        'POST',
        '/api/collections/app_files/records',
        (r) => server.json(record(1)),
      );
      final stored = await files.upload(
        appFileId: 'doc-1',
        bytes: Uint8List.fromList([1, 2, 3]),
        filename: 'a.txt',
        mimeType: 'text/plain',
      );
      expect(stored.appFileId, 'doc-1');
      expect(stored.revision, 1);
      expect(stored.recordId, 'r1');
      final body = server
          .where('POST', '/api/collections/app_files/records')
          .single
          .body;
      expect(body, contains('"app_file_id":"doc-1"'));
      expect(body, contains('filename="a.txt"'));
    });

    test('版が衝突したら1回だけやり直す。2回続けば失敗', () async {
      var calls = 0;
      server.on('POST', '/api/collections/app_files/records', (r) {
        calls++;
        return calls == 1
            ? server.json({
                'status': 400,
                'message': 'Failed to create record.',
                'data': {
                  'revision': {
                    'code': 'validation_not_unique',
                    'message': 'Value must be unique.',
                  },
                },
              }, status: 400)
            : server.json(record(2));
      });
      final stored = await files.upload(
        appFileId: 'doc-1',
        bytes: Uint8List(1),
        filename: 'a.txt',
      );
      expect(stored.revision, 2);
      expect(calls, 2);

      calls = -10; // 以降は常に衝突
      server.on('POST', '/api/collections/app_files/records', (r) {
        calls++;
        return server.json({
          'status': 400,
          'message': 'x',
          'data': {
            'revision': {'code': 'validation_not_unique', 'message': 'dup'},
          },
        }, status: 400);
      });
      await expectLater(
        files.upload(
          appFileId: 'doc-1',
          bytes: Uint8List(1),
          filename: 'a.txt',
        ),
        throwsA(isA<PbException>()),
      );
      expect(calls, -8);
    });

    test('不正なファイルIDはArgumentError(通信しない)', () async {
      for (final id in ['', 'a b', '../x', 'a' * 65]) {
        await expectLater(
          files.upload(appFileId: id, bytes: Uint8List(1), filename: 'a'),
          throwsArgumentError,
          reason: id,
        );
        await expectLater(files.download(id), throwsArgumentError, reason: id);
      }
      expect(server.requests, isEmpty);
    });

    test('ダウンロードはファイルIDから最新の版を取り、短命トークンで本体を取得する', () async {
      server.on(
        'GET',
        '/api/collections/app_files/records',
        (r) => server.json({
          'page': 1,
          'perPage': 1,
          'totalItems': 2,
          'totalPages': 2,
          'items': [record(2, id: 'r2')],
        }),
      );
      server.on(
        'POST',
        '/api/files/token',
        (r) => server.json({'token': 'file-token'}),
      );
      server.on(
        'GET',
        '/api/files/c_files/r2/a_xyz.txt',
        (r) => http.Response.bytes([104, 105], 200),
      );
      final downloaded = await files.download('doc-1');
      expect(downloaded!.file.revision, 2);
      expect(downloaded.bytes, [104, 105]);
      final list = server
          .where('GET', '/api/collections/app_files/records')
          .single;
      expect(list.url.queryParameters['sort'], '-revision');
      expect(list.url.queryParameters['filter'], contains('doc-1'));
      final fetch = server
          .where('GET', '/api/files/c_files/r2/a_xyz.txt')
          .single;
      expect(fetch.url.queryParameters['token'], 'file-token');
    });

    test('版を指定するとその版を探す。無ければnull', () async {
      server.on(
        'GET',
        '/api/collections/app_files/records',
        (r) => server.json({
          'page': 1,
          'perPage': 1,
          'totalItems': 0,
          'totalPages': 0,
          'items': [],
        }),
      );
      expect(await files.download('doc-1', revision: 9), isNull);
      final list = server
          .where('GET', '/api/collections/app_files/records')
          .single;
      expect(
        list.url.queryParameters['filter'],
        allOf(contains('revision'), contains('9')),
      );
      expect(server.where('POST', '/api/files/token'), isEmpty);
    });

    test('ファイル本体の取得に失敗したらPbException(URLを含めない)', () async {
      server.on(
        'GET',
        '/api/collections/app_files/records',
        (r) => server.json({
          'page': 1,
          'perPage': 1,
          'totalItems': 1,
          'totalPages': 1,
          'items': [record(1)],
        }),
      );
      server.on(
        'POST',
        '/api/files/token',
        (r) => server.json({'token': 'secret-token'}),
      );
      server.on(
        'GET',
        '/api/files/c_files/r1/a_xyz.txt',
        (r) => http.Response('gone', 404),
      );
      await expectLater(
        files.download('doc-1'),
        throwsA(
          isA<PbException>()
              .having((e) => e.kind, 'kind', PbFailureKind.notFound)
              .having(
                (e) => e.toString(),
                'text',
                isNot(contains('secret-token')),
              ),
        ),
      );
    });
  });

  group('個人ファイル', () {
    late FakePocketBase server;
    late PersonalFileService personal;

    Map<String, Object?> record() => {
      'id': 'p1',
      'collectionId': 'c_user_files',
      'collectionName': 'user_files',
      'key': 'settings',
      'file': 's_abc.json',
    };
    Map<String, Object?> list(List<Object?> items) => {
      'page': 1,
      'perPage': 1,
      'totalItems': items.length,
      'totalPages': items.isEmpty ? 0 : 1,
      'items': items,
    };

    setUp(() async {
      server = FakePocketBase();
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json(authBody()),
      );
      final connection = await server.open();
      await SessionService(connection).login('a', 'b');
      personal = PersonalFileService(connection);
      server.requests.clear();
    });

    test('無ければ作成する', () async {
      server.on(
        'GET',
        '/api/collections/user_files/records',
        (r) => server.json(list([])),
      );
      server.on(
        'POST',
        '/api/collections/user_files/records',
        (r) => server.json(record()),
      );
      expect(
        await personal.upload(
          key: 'settings',
          bytes: Uint8List.fromList(utf8.encode('{}')),
        ),
        'p1',
      );
      final created = server
          .where('POST', '/api/collections/user_files/records')
          .single
          .body;
      // 持ち主はログイン中のユーザー(サーバーのルールが本人だけに限定する)。
      expect(created, contains('"owner":"u1"'));
      expect(created, contains('"key":"settings"'));
      expect(
        server.where('PATCH', '/api/collections/user_files/records/p1'),
        isEmpty,
      );
    });

    test('未ログインのアップロードはunauthorized(通信しない)', () async {
      final anonymous = PersonalFileService(await FakePocketBase().open());
      await expectLater(
        anonymous.upload(key: 'settings', bytes: Uint8List(1)),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.unauthorized,
          ),
        ),
      );
    });

    test('あれば上書き(更新)する', () async {
      server.on(
        'GET',
        '/api/collections/user_files/records',
        (r) => server.json(list([record()])),
      );
      server.on(
        'PATCH',
        '/api/collections/user_files/records/p1',
        (r) => server.json(record()),
      );
      await personal.upload(key: 'settings', bytes: Uint8List(1));
      expect(
        server.where('POST', '/api/collections/user_files/records'),
        isEmpty,
      );
      expect(
        server.where('PATCH', '/api/collections/user_files/records/p1'),
        hasLength(1),
      );
    });

    test('ダウンロードと削除。無ければnull・何もしない', () async {
      server.on(
        'GET',
        '/api/collections/user_files/records',
        (r) => server.json(list([])),
      );
      expect(await personal.download('settings'), isNull);
      await personal.delete('settings');
      expect(
        server.where('DELETE', '/api/collections/user_files/records/p1'),
        isEmpty,
      );

      server.on(
        'GET',
        '/api/collections/user_files/records',
        (r) => server.json(list([record()])),
      );
      server.on('POST', '/api/files/token', (r) => server.json({'token': 't'}));
      server.on(
        'GET',
        '/api/files/c_user_files/p1/s_abc.json',
        (r) => http.Response.bytes(utf8.encode('{"a":1}'), 200),
      );
      expect(utf8.decode((await personal.download('settings'))!), '{"a":1}');
    });

    test('不正なキーはArgumentError', () async {
      for (final key in ['', 'Settings', '../x', 'a b']) {
        await expectLater(
          personal.upload(key: key, bytes: Uint8List(1)),
          throwsArgumentError,
          reason: key,
        );
      }
      expect(server.requests, isEmpty);
    });
  });

  test('PbException・PbConnectionはJSONにできる', () async {
    const e = PbException(
      PbFailureKind.validation,
      statusCode: 400,
      message: 'm',
    );
    expect(e.toJson()['kind'], 'validation');
    expect(e.isTransient, isFalse);
    expect(const PbException(PbFailureKind.network).isTransient, isTrue);
    final connection = await FakePocketBase().open();
    expect(connection.toJson(), {
      'endpoint': 'http://192.168.1.103:8090',
      'isLoggedIn': false,
    });
  });
}

http.Response http204() => http.Response('', 204);

class _FakeAdminContact implements IAdminContact {
  final requested = <String>[];

  @override
  Future<void> requestPasswordReset(String username) async =>
      requested.add(username);
}
