// PocketBase 単体の検証: 利用者が JWT(GraphQL 用)を得られ、セッションが正しく管理される。
//
// 保証すること:
//   - PocketBase が JWT を返す(クレーム・期限・ロール)
//   - JWT は Riverpod のサービスが一定期間(期限の手前まで)保持し、破棄・ログアウトで消える
//   - セッションが無い(破棄・無効化・削除)と JWT は得られない
//   - セッションを更新しながら JWT を取り直せる
// 使い捨ての利用者を作り、最後に削除する。実行方法は test/support/environment.dart。
@Tags(['server'])
library;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pbapi/pbapi.dart';

import 'support/environment.dart';
import 'support/fixtures.dart';
import 'support/jwt_tools.dart';

void main() {
  String? skipReason;
  late PocketBaseAdmin admin;

  setUpAll(() async {
    skipReason = await unavailableReason(needsGraphql: false);
    if (skipReason != null) return;
    admin = await PocketBaseAdmin.signIn();
  });

  tearDownAll(() async {
    if (skipReason == null) await admin.cleanUp();
  });

  Future<void> Function() onServer(Future<void> Function() body) => () async {
    if (skipReason != null) {
      markTestSkipped(skipReason!);
      return;
    }
    await body();
  };

  Matcher failure(PbFailureKind kind) =>
      isA<PbException>().having((e) => e.kind, 'kind', kind);

  group('JWT の発行とセッション', () {
    late TestUser user;
    late SessionFixture fixture;

    setUpAll(() async {
      if (skipReason != null) return;
      user = await admin.createUser();
      fixture = await SessionFixture.open();
      await fixture.session.login(user.username, user.password);
    });

    test(
      'PocketBase が JWT を返す: 署名方式・対象(aud)・ロール・担当者・期限',
      onServer(() async {
        final gql = await fixture.session.graphqlToken();
        final header = headerOf(gql.token);
        final claims = claimsOf(gql.token);

        expect(header['alg'], 'HS256');
        expect(claims['aud'], 'postgraphile');
        expect(claims['role'], 'pms_user', reason: '一般の利用者は管理者のロールにならない');
        expect(claims['app_role'], 'user');
        expect(claims['staff_id'], user.appUserId, reason: 'DB の関数が読む担当者のID');
        expect(claims['sub'], user.appUserId);
        expect(claims['app_user_id'], user.appUserId);
        expect(claims['pb_user_id'], user.id);

        final secondsLeft =
            (claims['exp'] as num).toInt() -
            DateTime.now().millisecondsSinceEpoch ~/ 1000;
        expect(secondsLeft, inInclusiveRange(800, 905), reason: '既定は15分');
        expect(
          gql.expiresAt.difference(DateTime.now()).inSeconds,
          inInclusiveRange(800, 905),
        );
      }),
    );

    test(
      'JWT のクレームに個人情報・秘密が入っていない(許可したクレームだけ)',
      onServer(() async {
        final claims = claimsOf((await fixture.session.graphqlToken()).token);
        const allowed = {
          'app_role',
          'app_user_id',
          'aud',
          'exp',
          'iat',
          'pb_user_id',
          'role',
          'staff_id',
          'sub',
        };
        expect(claims.keys.toSet().difference(allowed), isEmpty);
      }),
    );

    test(
      'GraphQL 用の JWT は PocketBase のトークンとは別物で、toJson・toString に出ない',
      onServer(() async {
        final gql = await fixture.session.graphqlToken();
        final pbToken = fixture.session.current!.token;
        expect(gql.token, isNot(pbToken));
        expect(gql.toString(), isNot(contains(gql.token)));
        expect(gql.toJson().values.join(), isNot(contains(gql.token)));
        expect(
          fixture.session.current!.toJson().values.join(),
          isNot(contains(pbToken)),
        );
      }),
    );

    test(
      'JWT は Riverpod のサービスが期限の手前まで保持する(速度のため再取得しない)。暗号化はしない',
      onServer(() async {
        final container = ProviderContainer(
          overrides: [
            pbConnectionProvider.overrideWithValue(fixture.connection),
          ],
        );
        addTearDown(container.dispose);
        final session = container.read(sessionServiceProvider);
        expect(
          identical(session, container.read(sessionServiceProvider)),
          isTrue,
        );

        final before = fixture.client.count('/api/app/graphql-token');
        final first = await session.graphqlToken();
        final second = await container
            .read(sessionServiceProvider)
            .graphqlToken();
        expect(identical(first, second), isTrue, reason: 'メモリ上の同じ値を返す');
        expect(
          fixture.client.count('/api/app/graphql-token') - before,
          lessThanOrEqualTo(1),
          reason: '2回呼んでもサーバーへは高々1回',
        );
        // 保持するのはメモリのみ。ディスクには保存しない(再起動すると、ログインから)。
        final restarted = await SessionFixture.open();
        expect(restarted.session.current, isNull);
        await expectLater(
          restarted.session.graphqlToken(),
          throwsA(failure(PbFailureKind.unauthorized)),
        );
        expect(restarted.client.count('/api/app/graphql-token'), 0);
      }),
    );

    test(
      '期限の手前なら取り直す: セッションを更新しながら JWT を得続けられる',
      onServer(() async {
        final session = fixture.session;
        final seen = <String>{};
        final before = fixture.client.count('/api/app/graphql-token');
        for (var i = 0; i < 3; i++) {
          expect(
            await session.ensureSession(),
            isTrue,
            reason: 'PocketBase のトークンの検証と延長',
          );
          // margin が有効期間(15分)より長い = 「期限の手前」とみなして取り直す。
          final token = await session.graphqlToken(
            margin: const Duration(minutes: 20),
          );
          seen.add(token.token);
          expect(claimsOf(token.token)['staff_id'], user.appUserId);
          await Future<void>.delayed(const Duration(milliseconds: 1100));
        }
        expect(
          fixture.client.count('/api/app/graphql-token') - before,
          3,
          reason: '毎回取り直す',
        );
        expect(
          seen.length,
          greaterThan(1),
          reason: '発行のたびに新しい JWT(iat・exp が進む)',
        );
        expect(session.current, isNotNull);
      }),
    );

    test(
      'ログアウト(破棄)すると、JWT は得られない。サーバーへは問い合わせない',
      onServer(() async {
        final other = await SessionFixture.open();
        await other.session.login(user.username, user.password);
        final token = await other.session.graphqlToken();
        expect(token.token, isNotEmpty);

        await other.session.logout();
        final before = other.client.count('/api/app/graphql-token');
        await expectLater(
          other.session.graphqlToken(),
          throwsA(failure(PbFailureKind.unauthorized)),
        );
        expect(other.client.count('/api/app/graphql-token'), before);
        expect(other.session.current, isNull);
        expect(await other.session.ensureSession(), isFalse);
      }),
    );
  });

  test(
    '管理者は管理者のロールの JWT を得る。ログアウトせずに別の利用者で入ると、前の利用者の JWT を使い回さない',
    onServer(() async {
      final adminUser = await admin.createUser(role: 'admin');
      final plain = await admin.createUser();
      final fixture = await SessionFixture.open();

      await fixture.session.login(adminUser.username, adminUser.password);
      final adminClaims = claimsOf(
        (await fixture.session.graphqlToken()).token,
      );
      expect(adminClaims['role'], 'pms_admin');
      expect(adminClaims['app_role'], 'admin');
      expect(adminClaims['staff_id'], adminUser.appUserId);

      // ログアウトせずに別の利用者でログインし直す。
      await fixture.session.login(plain.username, plain.password);
      final plainClaims = claimsOf(
        (await fixture.session.graphqlToken()).token,
      );
      expect(plainClaims['staff_id'], plain.appUserId);
      expect(plainClaims['role'], 'pms_user', reason: '管理者のロールが残ってはいけない');
      expect(plainClaims['pb_user_id'], plain.id);
    }),
  );

  test(
    '無効化された利用者は JWT を得られず、セッションも更新できない',
    onServer(() async {
      final user = await admin.createUser();
      final fixture = await SessionFixture.open();
      await fixture.session.login(user.username, user.password);
      expect((await fixture.session.graphqlToken()).token, isNotEmpty);

      await admin.setDisabled(user, true);
      await expectLater(
        fixture.session.graphqlToken(margin: const Duration(hours: 1)),
        throwsA(failure(PbFailureKind.unauthorized)),
      );
      expect(await fixture.session.ensureSession(), isFalse);
      expect(fixture.session.current, isNull, reason: '無効なセッションは破棄される');
    }),
  );

  test(
    '削除された利用者は JWT を得られず、セッションも無効になる',
    onServer(() async {
      final user = await admin.createUser();
      final fixture = await SessionFixture.open();
      await fixture.session.login(user.username, user.password);
      await admin.delete(user);

      await expectLater(
        fixture.session.graphqlToken(margin: const Duration(hours: 1)),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            anyOf(PbFailureKind.unauthorized, PbFailureKind.notFound),
          ),
        ),
      );
      expect(await fixture.session.ensureSession(), isFalse);
    }),
  );
}
