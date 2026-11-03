// テスト用 PocketBase(Docker のテスト環境)への結合テスト。
//
// 利用者・ファイルを実際に作る。作ったものはすべて後始末する(テスト専用の名前を使う)。
// 管理者(superuser)の資格情報が要る(利用者の先行登録と後始末のため)。コードや Git には書かず、実行時に渡す:
//
//   flutter test test/pocketbase_integration_test.dart \
//     --dart-define=PMS_TEST_POCKETBASE_URL=http://192.168.1.103:8090/api \
//     --dart-define=PMS_TEST_POCKETBASE_ADMIN_EMAIL=... \
//     --dart-define=PMS_TEST_POCKETBASE_ADMIN_PASSWORD=...
//
// 資格情報が無い・接続できないときはテストを中止(skip)する。本番のサーバーには実行しない。
@Tags(['server'])
library;

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:pbapi/pbapi.dart';
import 'package:pocketbase/pocketbase.dart';

import 'support/fake_pocketbase.dart';

const _url = String.fromEnvironment(
  'PMS_TEST_POCKETBASE_URL',
  defaultValue: 'http://192.168.1.103:8090/api',
);
const _adminEmail = String.fromEnvironment('PMS_TEST_POCKETBASE_ADMIN_EMAIL');
const _adminPassword = String.fromEnvironment(
  'PMS_TEST_POCKETBASE_ADMIN_PASSWORD',
);

Uint8List _bytes(String s) => Uint8List.fromList(utf8.encode(s));

void main() {
  final suffix = DateTime.now().millisecondsSinceEpoch.toRadixString(36);
  final userA = 'pbt.a.$suffix';
  final userB = 'pbt.b.$suffix';
  final userC = 'pbt.c.$suffix';
  final signupName = 'pbapi-signup-$suffix';
  final fileId = 'pbapi-test-$suffix';
  final personalCollection = 'user_files_pbt_$suffix';
  const passwordA1 = 'Passw0rd-First-1';
  const passwordA2 = 'Passw0rd-Second-2';
  const passwordB = 'Passw0rd-Bravo-3';

  String? skipReason;
  late PocketBase admin;
  late String codeA;
  late String codeB;
  var personalCreated = false;

  Future<PbConnection> open({ITokenStore? store}) => PbConnection.open(
    url: _url,
    logger: RecordingLogger(),
    tokenStore: store,
  );

  setUpAll(() async {
    if (_adminEmail.isEmpty || _adminPassword.isEmpty) {
      skipReason = '管理者の資格情報(PMS_TEST_POCKETBASE_ADMIN_*)が渡されていない';
      return;
    }
    final uri = Uri.parse(_url);
    try {
      (await Socket.connect(
        uri.host,
        uri.port,
        timeout: const Duration(seconds: 3),
      )).destroy();
    } catch (_) {
      skipReason = '$_url に接続できない';
      return;
    }
    admin = PocketBase(PbEndpoint.parse(_url).baseUrl);
    await admin
        .collection('_superusers')
        .authWithPassword(_adminEmail, _adminPassword);
    // 管理者が先に登録して有効化コードを発行する(メールは送らない)。
    Future<String> createUser(String username, String appUserId) async {
      final r = await admin.send(
        '/api/app/admin/users',
        method: 'POST',
        body: {'username': username, 'app_user_id': appUserId, 'mail': false},
      );
      return '${r['code']}';
    }

    codeA = await createUser(userA, 'PBAPI-A');
    codeB = await createUser(userB, 'PBAPI-B');

    // 個人ファイル用の一時コレクション(doc/contents/server_user_files.md と同じルール)。
    final users = await admin.collections.getOne('users');
    const mine =
        "@request.auth.collectionName = 'users' && owner = @request.auth.id";
    await admin.collections.create(
      body: {
        'type': 'base',
        'name': personalCollection,
        'listRule': mine,
        'viewRule': mine,
        'createRule':
            "@request.auth.collectionName = 'users' && @request.body.owner = @request.auth.id",
        'updateRule':
            "$mine && @request.body.owner:isset = false && @request.body.key:isset = false",
        'deleteRule': mine,
        'fields': [
          {
            'type': 'relation',
            'name': 'owner',
            'required': true,
            'collectionId': users.id,
            'maxSelect': 1,
            'cascadeDelete': true,
          },
          {
            'type': 'text',
            'name': 'key',
            'required': true,
            'max': 64,
            'pattern': r'^[a-z0-9][a-z0-9_.-]*$',
          },
          {
            'type': 'file',
            'name': 'file',
            'required': true,
            'maxSelect': 1,
            'maxSize': 5242880,
            'protected': true,
          },
        ],
        'indexes': [
          'CREATE UNIQUE INDEX idx_${personalCollection}_owner_key ON $personalCollection (owner, key)',
        ],
      },
    );
    personalCreated = true;
  });

  tearDownAll(() async {
    if (skipReason != null) return;
    Future<void> quietly(Future<void> Function() body) async {
      try {
        await body();
      } catch (_) {}
    }

    await quietly(() async {
      for (final f
          in await admin
              .collection('app_files')
              .getFullList(
                filter: admin.filter('app_file_id = {:id}', {'id': fileId}),
              )) {
        await admin.collection('app_files').delete(f.id);
      }
    });
    if (personalCreated) {
      await quietly(() => admin.collections.delete(personalCollection));
    }
    for (final name in [userA, userB, userC]) {
      await quietly(() async {
        final u = await admin
            .collection('users')
            .getFirstListItem(admin.filter('username = {:u}', {'u': name}));
        await admin.collection('users').delete(u.id);
      });
    }
    // 承認まで進まなかった申請(申請中のユーザーごと削除)。
    await quietly(() async {
      for (final p
          in await admin
              .collection('signup_profiles')
              .getFullList(
                filter: admin.filter('full_name = {:n}', {'n': signupName}),
              )) {
        await admin.collection('users').delete(p.getStringValue('user'));
      }
    });
  });

  Future<void> Function() onServer(Future<void> Function() body) => () async {
    if (skipReason != null) {
      markTestSkipped(skipReason!);
      return;
    }
    await body();
  };

  late PbConnection connA;
  late PbConnection connB;
  late SessionService sessionA;
  late AccountService accountA;
  final storeA = InMemoryTokenStore();

  test(
    '有効化コードでパスワードを決めてログインでき、同じコードは二度使えない。有効化前はログインできない',
    onServer(() async {
      connA = await open(store: storeA);
      sessionA = SessionService(connA);
      accountA = AccountService(connA, sessionA);

      // 承認済み(未有効化)はパスワード未設定でログインできない。理由は区別されない。
      await expectLater(
        sessionA.login(userA, passwordA1),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.invalidCredentials,
          ),
        ),
      );

      await accountA.acceptCode(
        username: userA,
        code: codeA,
        password: passwordA1,
      );
      final s = await sessionA.login(userA, passwordA1);
      expect(s.username, userA);
      expect(s.appUserId, 'PBAPI-A');
      expect(s.token, isNotEmpty);
      expect(s.expiresAt!.isAfter(DateTime.now()), isTrue);
      expect(await sessionA.ensureSession(), isTrue);

      final other = AccountService(await open(), SessionService(await open()));
      await expectLater(
        other.acceptCode(username: userA, code: codeA, password: passwordA1),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.validation,
          ),
        ),
      );

      // もう一人(共有・本人限定の確認用)。
      // 登録直後のセッションを、以降のテストで使い回す(ログインは1分10回までの制限がある)。
      connB = await open();
      final sessionB = SessionService(connB);
      await AccountService(
        connB,
        sessionB,
      ).acceptCode(username: userB, code: codeB, password: passwordB);
      await sessionB.login(userB, passwordB);
    }),
  );

  test(
    'ログイン: 誤りはinvalidCredentials、IDは大文字小文字を区別せず、ログアウトで無効になる',
    onServer(() async {
      final s = SessionService(await open());
      await expectLater(
        s.login(userA, 'wrong-password-1'),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.invalidCredentials,
          ),
        ),
      );
      expect(s.current, isNull);
      expect(await s.ensureSession(), isFalse);

      final session = await s.login(userA.toUpperCase(), passwordA1);
      expect(session.username, userA);
      await s.logout();
      expect(s.current, isNull);
      expect(await s.ensureSession(), isFalse);
    }),
  );

  test(
    'セッション確認: 期限内ならtrue、複数回確認できる',
    onServer(() async {
      final s = sessionA;
      expect(await s.ensureSession(), isTrue);
      expect(
        await s.ensureSession(minInterval: const Duration(minutes: 1)),
        isTrue,
      );
      final first = await s
          .watch(interval: const Duration(milliseconds: 50))
          .first;
      expect(first, isTrue);
    }),
  );

  test(
    'パスワード変更: 古いパスワードが違えば拒否、一致すれば適用。以前のトークンは無効になる',
    onServer(() async {
      await expectLater(
        accountA.changePassword(
          oldPassword: 'not-the-old-password',
          newPassword: passwordA2,
        ),
        throwsA(
          isA<PbException>()
              .having((e) => e.kind, 'kind', PbFailureKind.validation)
              .having(
                (e) => e.fieldErrors.containsKey('oldPassword'),
                'oldPassword',
                isTrue,
              ),
        ),
      );
      final oldToken = await storeA.read();
      final oldJwt = sessionA.current!.token;
      expect(oldToken, isNotNull);

      final renewed = await accountA.changePassword(
        oldPassword: passwordA1,
        newPassword: passwordA2,
      );
      expect(renewed.token, isNot(oldJwt));
      expect(await sessionA.ensureSession(), isTrue);

      // 以前のトークンは使えない。
      final stale = InMemoryTokenStore();
      await stale.write(oldToken!);
      final staleSession = SessionService(await open(store: stale));
      expect(await staleSession.ensureSession(), isFalse);

      // 古いパスワードではログインできず、新しいパスワードでできる。
      final s = SessionService(await open());
      await expectLater(
        s.login(userA, passwordA1),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.invalidCredentials,
          ),
        ),
      );
      expect((await s.login(userA, passwordA2)).username, userA);
    }),
  );

  test(
    '共有ファイル: 版が増え、ファイルIDから最新・指定の版をダウンロードでき、他のユーザーも取得できる',
    onServer(() async {
      final files = SharedFileService(connA);
      final v1 = await files.upload(
        appFileId: fileId,
        bytes: _bytes('first'),
        filename: 'a.txt',
        mimeType: 'text/plain',
        comment: 'pbapi test',
      );
      final v2 = await files.upload(
        appFileId: fileId,
        bytes: _bytes('second!'),
        filename: 'a.txt',
      );
      expect(v1.revision, 1);
      expect(v2.revision, 2);
      expect(v1.recordId, isNot(v2.recordId));
      expect(v1.appFileId, fileId);
      expect(v1.originalName, 'a.txt');
      expect(v1.sizeBytes, 5);

      expect((await files.latest(fileId))!.revision, 2);
      expect((await files.history(fileId)).map((f) => f.revision), [2, 1]);

      final latest = await files.download(fileId);
      expect(utf8.decode(latest!.bytes), 'second!');
      expect(latest.file.revision, 2);
      expect(
        utf8.decode((await files.download(fileId, revision: 1))!.bytes),
        'first',
      );
      expect(await files.download(fileId, revision: 9), isNull);
      expect(await files.download('pbapi-test-none-$suffix'), isNull);

      // 共有: 別のユーザーも取得できる。
      expect(
        utf8.decode((await SharedFileService(connB).download(fileId))!.bytes),
        'second!',
      );

      // 未ログインでは取得できない。
      await expectLater(
        SharedFileService(await open()).download(fileId),
        throwsA(isA<PbException>()),
      );
    }),
  );

  test(
    '個人ファイル: 本人だけが参照でき、同じキーは上書きされ、削除できる',
    onServer(() async {
      final personal = PersonalFileService(
        connA,
        collection: personalCollection,
      );
      final id1 = await personal.upload(
        key: 'settings',
        bytes: _bytes('{"v":1}'),
      );
      final id2 = await personal.upload(
        key: 'settings',
        bytes: _bytes('{"v":2}'),
      );
      expect(id2, id1, reason: '同じキーは新しいレコードを作らず上書きする');
      expect(utf8.decode((await personal.download('settings'))!), '{"v":2}');
      expect(await personal.download('other'), isNull);

      final personalB = PersonalFileService(
        connB,
        collection: personalCollection,
      );
      expect(
        await personalB.download('settings'),
        isNull,
        reason: '他人のファイルは見えない',
      );
      final idB = await personalB.upload(
        key: 'settings',
        bytes: _bytes('{"b":1}'),
      );
      expect(idB, isNot(id1));
      expect(utf8.decode((await personal.download('settings'))!), '{"v":2}');
      expect(utf8.decode((await personalB.download('settings'))!), '{"b":1}');

      await personal.delete('settings');
      expect(await personal.download('settings'), isNull);
      expect(await personalB.download('settings'), isNotNull);

      await expectLater(
        PersonalFileService(
          await open(),
          collection: personalCollection,
        ).upload(key: 'settings', bytes: _bytes('x')),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.unauthorized,
          ),
        ),
      );
    }),
  );

  test(
    'パスワード再設定の依頼: 登録の有無がわからない応答(存在しないメールでも成功)',
    onServer(() async {
      final account = AccountService(
        await open(),
        SessionService(await open()),
      );
      try {
        // 存在しないユーザーでも、応答はいつも成功(登録の有無がわからない)。
        await account.requestPasswordReset('pbapi-nobody-$suffix');
      } on PbException catch (e) {
        // レート制限(429)に当たったときだけは許す。
        expect(e.kind, PbFailureKind.rateLimited);
      }
      // 無効なコードでの入力は、ユーザーIDの有無によらず同じ validation。
      await expectLater(
        account.acceptCode(
          username: userA,
          code: 'AAAA-AAAA-AAAA',
          password: passwordA2,
        ),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.validation,
          ),
        ),
      );
      await expectLater(
        account.acceptCode(
          username: 'pbapi-nobody-$suffix',
          code: 'AAAA-AAAA-AAAA',
          password: passwordA2,
        ),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.validation,
          ),
        ),
      );
    }),
  );

  test(
    '申請→一覧→承認→コード入力→ログイン→無効化でログインできなくなる',
    onServer(() async {
      // 申請(ログイン不要。応答はいつも同じ)。
      final anon = await open();
      await AccountService(anon, SessionService(anon)).requestSignup(
        fullName: signupName,
        requestedUsername: userC,
        profile: {'dept_wish': 'pbapi-test'},
      );

      // 管理者(superuser)の接続で、一覧から自分の申請を探して承認する。
      final adminConn = await open();
      await adminConn.pb
          .collection('_superusers')
          .authWithPassword(_adminEmail, _adminPassword);
      final adminService = AdminService(adminConn);
      final request = (await adminService.listSignupRequests()).singleWhere(
        (r) => r.fullName == signupName,
      );
      expect(request.requestedUsername, userC);
      expect(request.profile['dept_wish'], 'pbapi-test');

      final issued = await adminService.activate(
        userId: request.userId,
        appUserId: 'PBAPI-C',
        mail: false,
      );
      expect(issued.username, userC);
      expect(issued.kind, CodeKind.activate);
      expect(issued.mailed, isFalse);
      expect(issued.code, isNotEmpty);

      // 本人がコードとパスワードを入力してログインできる。
      final conn = await open();
      final session = SessionService(conn);
      await AccountService(
        conn,
        session,
      ).acceptCode(username: userC, code: issued.code, password: passwordB);
      expect((await session.login(userC, passwordB)).appUserId, 'PBAPI-C');

      // 無効化すると、既存のセッションも新しいログインも通らない。
      await adminService.setDisabled(request.userId);
      expect(await session.ensureSession(), isFalse);
      await expectLater(
        SessionService(await open()).login(userC, passwordB),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.invalidCredentials,
          ),
        ),
      );
      await adminService.setDisabled(request.userId, disabled: false);
    }),
  );
}
