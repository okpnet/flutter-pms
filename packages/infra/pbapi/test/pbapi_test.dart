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

    test('無効・未承認のユーザーの403も、パスワード違いと同じinvalidCredentials', () async {
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json({'status': 403, 'message': 'x'}, status: 403),
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

  group('登録申請・コード入力・パスワード', () {
    late FakePocketBase server;
    late AccountService account;
    late SessionService session;
    late RecordingLogger logger;

    setUp(() async {
      server = FakePocketBase();
      logger = RecordingLogger();
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json(authBody()),
      );
      final connection = await server.open(logger: logger);
      session = SessionService(connection);
      account = AccountService(connection, session);
    });

    test('登録申請は空の項目を送らず、ログインはしない', () async {
      server.on(
        'POST',
        '/api/app/signup',
        (r) => server.json({'status': 'accepted'}, status: 202),
      );
      await account.requestSignup(
        fullName: ' 山田 太郎 ',
        requestedUsername: ' yamada.t ',
        contactEmail: '  ',
        profile: {'dept_wish': '製造部'},
      );
      final sent = jsonDecode(
        server.where('POST', '/api/app/signup').single.body,
      );
      expect(sent['full_name'], '山田 太郎');
      expect(sent['requested_username'], 'yamada.t');
      expect(sent.containsKey('contact_email'), isFalse);
      expect(sent['profile'], {'dept_wish': '製造部'});
      expect(session.current, isNull);
    });

    test('受付停止(503)はunavailableで、一時的な失敗として扱うがエラーログには残さない', () async {
      server.on(
        'POST',
        '/api/app/signup',
        (r) => server.json({'status': 503, 'message': 'closed'}, status: 503),
      );
      await expectLater(
        account.requestSignup(fullName: 'a'),
        throwsA(
          isA<PbException>()
              .having((e) => e.kind, 'kind', PbFailureKind.unavailable)
              .having((e) => e.isTransient, 'isTransient', isTrue),
        ),
      );
      expect(logger.errors, isEmpty);
    });

    test('コード入力はコードを加工せず送り(照合はサーバー)、ログインはしない', () async {
      server.on('POST', '/api/app/codes/accept', (r) => http204());
      await account.acceptCode(
        username: ' tanaka.t ',
        code: ' abcd-efgh-jklm ',
        password: 'pass1234',
      );
      final sent = jsonDecode(
        server.where('POST', '/api/app/codes/accept').single.body,
      );
      expect(sent['username'], 'tanaka.t');
      expect(sent['code'], 'abcd-efgh-jklm');
      expect(sent['password'], 'pass1234');
      expect(sent['passwordConfirm'], 'pass1234');
      expect(session.current, isNull);
    });

    test('コードが無効なら理由によらずvalidation。例外とログにコード・パスワードを含めない', () async {
      server.on(
        'POST',
        '/api/app/codes/accept',
        (r) => server.json({
          'status': 400,
          'message': 'invalid or expired',
          'data': {},
        }, status: 400),
      );
      Object? caught;
      try {
        await account.acceptCode(
          username: 'a',
          code: 'SECRET-CODE-1234',
          password: 'pass-secret-1',
        );
      } on PbException catch (e) {
        caught = e;
      }
      final e = caught! as PbException;
      expect(e.kind, PbFailureKind.validation);
      expect(e.operation, 'acceptCode');
      for (final text in [
        e.toString(),
        jsonEncode(e.toJson()),
        ...logger.errors,
      ]) {
        expect(text, isNot(contains('SECRET-CODE')));
        expect(text, isNot(contains('pass-secret')));
      }
    });

    test('項目のエラーは文言ではなくコードで持つ', () async {
      server.on(
        'POST',
        '/api/app/codes/accept',
        (r) => server.json({
          'status': 400,
          'message': 'Failed.',
          'data': {
            'username': {
              'code': 'validation_required',
              'message': 'ユーザーIDを入力してください。',
            },
          },
        }, status: 400),
      );
      await expectLater(
        account.acceptCode(username: '', code: 'x', password: 'pass1234'),
        throwsA(
          isA<PbException>().having((e) => e.fieldErrors, 'fieldErrors', {
            'username': 'validation_required',
          }),
        ),
      );
    });

    test('短いパスワードは通信せずArgumentError(値は例外に出さない)', () async {
      await expectLater(
        account.acceptCode(username: 'a', code: 'x', password: 'short'),
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

    test('パスワードを忘れた依頼は、ユーザーIDまたはEメールをそのまま送る', () async {
      server.on(
        'POST',
        '/api/app/password-reset/request',
        (r) => server.json({'status': 'accepted'}, status: 202),
      );
      await account.requestPasswordReset(' tanaka.t ');
      expect(
        jsonDecode(
          server.where('POST', '/api/app/password-reset/request').single.body,
        ),
        {'identity': 'tanaka.t'},
      );
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
            (e) => e.fieldErrors['oldPassword'],
            'oldPassword',
            'validation_invalid_old_password',
          ),
        ),
      );
    });

    test('プロフィール変更は名前だけを送る(アバターはAvatarService)。未ログインはunauthorized', () async {
      await expectLater(
        account.updateProfile(name: 'x'),
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
        (r) => server.json(authBody()['record']),
      );
      await account.updateProfile(name: 'tanaka');
      final body = server
          .where('PATCH', '/api/collections/users/records/u1')
          .single
          .body;
      expect(body, contains('"name":"tanaka"'));
      // users.avatar はサーバーが拒否するため送らない
      expect(body, isNot(contains('avatar')));
      expect(body, isNot(contains('username')));
      expect(body, isNot(contains('role')));
    });
  });

  group('GraphQL用トークン', () {
    late FakePocketBase server;
    late SessionService session;

    setUp(() async {
      server = FakePocketBase();
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json(authBody()),
      );
      server.on(
        'GET',
        '/api/app/graphql-token',
        (r) => server.json({'token': 'gql.jwt', 'expires_in': 900}),
      );
      session = SessionService(await server.open());
    });

    test('未ログインはunauthorized(通信しない)', () async {
      await expectLater(
        session.graphqlToken(),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.unauthorized,
          ),
        ),
      );
      expect(server.requests, isEmpty);
    });

    test('期限まで使い回し、期限の前なら取り直す。toStringにトークンは含まれない', () async {
      await session.login('tanaka.t', 'x');
      final first = await session.graphqlToken();
      final second = await session.graphqlToken();
      expect(first.token, 'gql.jwt');
      expect(identical(first, second), isTrue);
      expect(server.where('GET', '/api/app/graphql-token'), hasLength(1));
      expect(first.toString(), isNot(contains('gql.jwt')));

      await session.graphqlToken(margin: const Duration(minutes: 20));
      expect(server.where('GET', '/api/app/graphql-token'), hasLength(2));
    });

    test('ログアウトせずに別のユーザーでログインし直しても、前のユーザーのJWTを使い回さない', () async {
      var issued = 0;
      server.on('GET', '/api/app/graphql-token', (r) {
        issued++;
        return server.json({'token': 'gql.jwt.$issued', 'expires_in': 900});
      });
      await session.login('user.a', 'x');
      expect((await session.graphqlToken()).token, 'gql.jwt.1');
      await session.login('user.b', 'x');
      expect((await session.graphqlToken()).token, 'gql.jwt.2');
    });

    test('ログアウトで破棄する。サーバーが無設定(404)ならnotFound', () async {
      await session.login('tanaka.t', 'x');
      await session.graphqlToken();
      await session.logout();
      await session.login('tanaka.t', 'x');
      await session.graphqlToken();
      expect(server.where('GET', '/api/app/graphql-token'), hasLength(2));

      server.on(
        'GET',
        '/api/app/graphql-token',
        (r) => server.json({'status': 404, 'message': 'x'}, status: 404),
      );
      await expectLater(
        session.graphqlToken(margin: const Duration(hours: 1)),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.notFound,
          ),
        ),
      );
    });
  });

  group('管理者', () {
    late FakePocketBase server;
    late AdminService admin;

    Map<String, Object?> codeBody({String kind = 'activate'}) => {
      'user': {
        'id': 'p1',
        'username': 'yamada.t',
        'app_user_id': 'U0001',
        'status': 'approved',
      },
      'kind': kind,
      'code': 'ABCD-EFGH-JKLM',
      'expires_at': '2026-11-05 10:00:00.000Z',
      'mailed': false,
    };

    Map<String, Object?> page(List<Map<String, Object?>> items) => {
      'page': 1,
      'perPage': 500,
      'totalItems': items.length,
      'totalPages': 1,
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
      await SessionService(connection).login('admin1', 'x');
      admin = AdminService(connection);
    });

    test('未ログインは通信せずunauthorized', () async {
      final anonymous = AdminService(await FakePocketBase().open());
      await expectLater(
        anonymous.listSignupRequests(),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.unauthorized,
          ),
        ),
      );
    });

    test('申請の一覧を古い順に取り、本人情報を読む', () async {
      server.on('GET', '/api/collections/signup_profiles/records', (r) {
        expect(r.url.queryParameters['sort'], 'created');
        expect(r.url.queryParameters['expand'], 'user');
        return server.json(
          page([
            {
              'id': 's1',
              'collectionId': 'c_sp',
              'collectionName': 'signup_profiles',
              'user': 'p1',
              'full_name': '山田 太郎',
              'requested_username': 'yamada.t',
              'contact_email': '',
              'profile': {'dept_wish': '製造部'},
              'note': '',
              'created': '2026-11-02 09:00:00.000Z',
            },
          ]),
        );
      });
      final list = await admin.listSignupRequests();
      expect(list.single.userId, 'p1');
      expect(list.single.fullName, '山田 太郎');
      expect(list.single.profile, {'dept_wish': '製造部'});
      expect(list.single.created, isNotNull);
    });

    test('承認はapp_user_idを送り、コードを返す。toJson・toStringにコードを含めない', () async {
      server.on(
        'POST',
        '/api/app/admin/users/p1/activate',
        (r) => server.json(codeBody()),
      );
      final issued = await admin.activate(
        userId: 'p1',
        appUserId: ' U0001 ',
        email: '',
      );
      expect(issued.code, 'ABCD-EFGH-JKLM');
      expect(issued.kind, CodeKind.activate);
      expect(issued.mailed, isFalse);
      expect(issued.appUserId, 'U0001');
      expect(issued.expiresAt, isNotNull);
      expect(jsonEncode(issued.toJson()), isNot(contains('ABCD')));
      expect(issued.toString(), isNot(contains('ABCD')));
      final sent = jsonDecode(
        server.where('POST', '/api/app/admin/users/p1/activate').single.body,
      );
      expect(sent, {'app_user_id': 'U0001', 'email': ''});
    });

    test('一般ユーザーの呼び出しはサーバーのforbiddenに従う', () async {
      server.on(
        'POST',
        '/api/app/admin/users/p1/activate',
        (r) => server.json({'status': 403, 'message': 'x'}, status: 403),
      );
      await expectLater(
        admin.activate(userId: 'p1', appUserId: 'U1'),
        throwsA(
          isA<PbException>()
              .having((e) => e.kind, 'kind', PbFailureKind.forbidden)
              .having((e) => e.operation, 'operation', 'activate'),
        ),
      );
    });

    test('却下・無効化・再有効化・先に登録・再設定コード', () async {
      server.on('POST', '/api/app/admin/users/p1/reject', (r) => http204());
      server.on(
        'POST',
        '/api/app/admin/users/p1/disable',
        (r) => server.json({'user': {}}),
      );
      server.on(
        'POST',
        '/api/app/admin/users',
        (r) => server.json(codeBody(), status: 201),
      );
      server.on(
        'POST',
        '/api/app/admin/users/p1/reset-code',
        (r) => server.json(codeBody(kind: 'reset')),
      );
      await admin.reject('p1');
      await admin.setDisabled('p1');
      await admin.setDisabled('p1', disabled: false);
      final created = await admin.createUser(
        username: 'yamada.t',
        appUserId: 'U0001',
        role: 'admin',
        mail: false,
      );
      expect(created.userId, 'p1');
      final reset = await admin.issueResetCode('p1');
      expect(reset.kind, CodeKind.reset);

      final disables = server.where('POST', '/api/app/admin/users/p1/disable');
      expect(jsonDecode(disables[0].body), {'disabled': true});
      expect(jsonDecode(disables[1].body), {'disabled': false});
      expect(
        jsonDecode(server.where('POST', '/api/app/admin/users').single.body),
        {
          'username': 'yamada.t',
          'app_user_id': 'U0001',
          'role': 'admin',
          'mail': false,
        },
      );
    });

    test('再設定依頼の一覧は未対応だけを、依頼したユーザーの名前つきで返す', () async {
      server.on('GET', '/api/collections/reset_requests/records', (r) {
        expect(r.url.queryParameters['filter'], "status = 'open'");
        return server.json(
          page([
            {
              'id': 'r1',
              'collectionId': 'c_rr',
              'collectionName': 'reset_requests',
              'user': 'p1',
              'status': 'open',
              'created': '2026-11-02 09:00:00.000Z',
              'expand': {
                'user': {
                  'id': 'p1',
                  'collectionId': 'c_users',
                  'collectionName': 'users',
                  'username': 'yamada.t',
                  'name': '山田 太郎',
                },
              },
            },
          ]),
        );
      });
      final list = await admin.listResetRequests();
      expect(list.single.userId, 'p1');
      expect(list.single.username, 'yamada.t');
      expect(list.single.name, '山田 太郎');
    });

    test('空のユーザーIDはArgumentError(通信しない)', () async {
      final before = server.requests.length;
      await expectLater(admin.reject(' '), throwsArgumentError);
      expect(server.requests.length, before);
    });
  });

  group('PbException', () {
    test('ログ用の1行に、操作・種類・ステータス・項目のコードを含み、入力値は含めない', () {
      const e = PbException(
        PbFailureKind.validation,
        statusCode: 400,
        operation: 'acceptCode',
        message: 'Failed.',
        fieldErrors: {'password': 'validation_length_out_of_range'},
      );
      expect(
        e.logMessage,
        '[pbapi] acceptCode: validation (status=400) '
        'fields={password:validation_length_out_of_range} server="Failed."',
      );
      expect(e.toString(), e.logMessage);
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
