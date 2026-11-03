// 結合の検証: PocketBase の JWT を、すべてのモデル(12パッケージの読み込み)で PostGraphile へ送る。
//
// 保証すること:
//   - 有効なセッションで、どのモデルもデータを取得できる
//   - セッションが切れた状態(期限切れ・不正な JWT・破棄・JWT なし)では、データを取得できず、
//     どのモデルも正しい型のエラー(SessionExpiredError / PermissionDeniedError)を返す
//   - セッションを更新しながら、データを取得できる(期限切れ → 取り直して再試行も含む)
//
// 「有効なセッションでデータを取得できる」ケースは、検証用 DB の権限(authenticator → pms_user の
// GRANT とスキーマの USAGE)が前提。未設定の間は、そのケースが理由つきで失敗する。
// 実行方法は test/support/environment.dart。
@Tags(['server'])
library;

import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pbapi/pbapi.dart';
import 'package:pms_graphql/pms_graphql.dart';

import 'support/app_authorization.dart';
import 'support/environment.dart';
import 'support/fixtures.dart';
import 'support/jwt_tools.dart';
import 'support/model_probes.dart';

void main() {
  String? skipReason;
  late String url;
  late PocketBaseAdmin admin;
  late TestUser user;
  late SessionFixture fixture;
  late String realJwt;

  setUpAll(() async {
    skipReason = await unavailableReason();
    if (skipReason != null) return;
    url = (await findGraphqlUrl())!;
    admin = await PocketBaseAdmin.signIn();
    user = await admin.createUser();
    fixture = await SessionFixture.open();
    await fixture.session.login(user.username, user.password);
    realJwt = (await fixture.session.graphqlToken()).token;
  });

  tearDownAll(() async {
    if (skipReason == null) await admin.cleanUp();
  });

  /// 検証用 DB に権限が無いときの手がかりを、失敗の理由に添える。
  String hintOf(GraphqlProverResult<Map<dynamic, dynamic>> result) {
    final text = result.toString();
    return text.contains('set role')
        ? '$text\n  → 検証用 DB: GRANT pms_user, pms_admin TO authenticator; '
              'GRANT USAGE ON SCHEMA tests TO pms_user;'
        : text;
  }

  /// すべてのモデルで [client] から問い合わせ、[check] が null 以外を返したものを失敗として集める。
  Future<void> sweep(
    GraphQLClient client,
    String? Function(
      ModelProbe probe,
      GraphqlProverResult<Map<dynamic, dynamic>> r,
    )
    check,
  ) async {
    final provider = GraphQLClientProvider(
      url,
      graphQLClient: client,
      timeLimit: 30,
    );
    final failures = <String>[];
    for (final probe in modelProbes) {
      final result = await provider.query(
        QueryOptions(document: probe.document, variables: probe.variables),
      );
      final problem = check(probe, result);
      if (problem != null) failures.add('$probe: $problem');
    }
    expect(failures, isEmpty, reason: '\n${failures.join("\n")}');
  }

  Future<void> Function() onServer(
    Future<void> Function() body, {
    bool needsSecret = false,
  }) => () async {
    if (skipReason != null) {
      markTestSkipped(skipReason!);
      return;
    }
    if (needsSecret && jwtSecret.isEmpty) {
      markTestSkipped('JWT の鍵(PMS_TEST_JWT_SECRET)が渡されていない');
      return;
    }
    await body();
  };

  /// 失敗した結果の型付きエラー。成功なら null。
  GraphqlProviderException? errorOf(
    GraphqlProverResult<Map<dynamic, dynamic>> result,
  ) => result is Err<Map<dynamic, dynamic>> ? result.error : null;

  String? expectSessionError(
    GraphqlProverResult<Map<dynamic, dynamic>> r,
    SessionExpiredReason reason,
    int status,
  ) {
    if (r is! Err<Map<dynamic, dynamic>>) return 'Ok(データが返った): $r';
    final error = r.error;
    if (error is! SessionExpiredError) return '${error.runtimeType} ($error)';
    if (error.reason != reason) {
      return 'reason=${error.reason.name}(期待: ${reason.name})';
    }
    if (error.status != status) return 'status=${error.status}(期待: $status)';
    if (r.data != null && r.data!.values.any((v) => v != null)) {
      return 'データが残っている';
    }
    return null;
  }

  group('有効なセッション', () {
    test(
      'どのモデルも、PocketBase の JWT でデータを取得できる',
      onServer(() async {
        final graphql = CountingClient();
        final client = graphqlClientFor(
          url,
          authorization: appAuthorization(fixture.session),
          httpClient: graphql,
        );
        await sweep(client, (p, r) => r is Ok ? null : hintOf(r));
        expect(graphql.requests.length, modelProbes.length);
        // 全モデルの問い合わせで、JWT の発行は期限内の使い回し(高々1回)。
        expect(
          fixture.client.count('/api/app/graphql-token'),
          lessThanOrEqualTo(1),
        );
      }),
    );

    test(
      'セッションを更新しながら(毎回 JWT を取り直して)データを取得し続けられる',
      onServer(() async {
        final issued = fixture.client.count('/api/app/graphql-token');
        final client = graphqlClientFor(
          url,
          // margin を有効期間より長くして、毎回取り直させる(= 期限の手前で更新)。
          authorization: appAuthorization(
            fixture.session,
            margin: const Duration(minutes: 20),
          ),
        );
        for (var round = 0; round < 3; round++) {
          expect(await fixture.session.ensureSession(), isTrue);
          await sweep(
            client,
            (p, r) =>
                p.model == modelProbes.first.model || p.model == 'system_model'
                ? (r is Ok ? null : hintOf(r))
                : null,
          );
          await Future<void>.delayed(const Duration(milliseconds: 1100));
        }
        // 各ラウンドで全モデルへ送り、送るたびに JWT を取り直す(3ラウンド × モデル数)。
        expect(
          fixture.client.count('/api/app/graphql-token') - issued,
          3 * modelProbes.length,
        );
      }),
    );

    test(
      '期限切れ → 取り直して再試行すると、続きを取得できる',
      onServer(needsSecret: true, () async {
        final expired = forgeJwt(
          secret: jwtSecret,
          claims: {
            'aud': 'postgraphile',
            'role': 'pms_user',
            'staff_id': user.appUserId,
            'exp': expIn(const Duration(seconds: -120)),
          },
        );
        final provider = GraphQLClientProvider(
          url,
          graphQLClient: graphqlClientFor(
            url,
            authorization: () async => 'Bearer $expired',
          ),
        );
        final probe = modelProbes.first;
        final first = await provider.query(
          QueryOptions(document: probe.document, variables: probe.variables),
        );
        expect(
          expectSessionError(first, SessionExpiredReason.expired, 401),
          isNull,
        );

        // アプリの手順: 期限切れなら、セッションを確認して JWT を取り直し、同じ問い合わせを再試行する。
        expect(await fixture.session.ensureSession(), isTrue);
        final renewed = GraphQLClientProvider(
          url,
          graphQLClient: graphqlClientFor(
            url,
            authorization: appAuthorization(
              fixture.session,
              margin: const Duration(minutes: 20),
            ),
          ),
        );
        final second = await renewed.query(
          QueryOptions(document: probe.document, variables: probe.variables),
        );
        expect(second is Ok ? null : hintOf(second), isNull);
      }),
    );

    test(
      '破棄してログインし直すと、再びデータを取得できる',
      onServer(() async {
        final other = await SessionFixture.open();
        await other.session.login(user.username, user.password);
        await other.session.logout();
        await other.session.login(user.username, user.password);
        final client = graphqlClientFor(
          url,
          authorization: appAuthorization(other.session),
        );
        await sweep(
          client,
          (p, r) =>
              p == modelProbes.first ? (r is Ok ? null : hintOf(r)) : null,
        );
      }),
    );
  });

  group('認証の段階(DB の権限に依存しない)', () {
    // 検証用 DB の権限(ロールの切り替え)が未設定でも、JWT の発行・検証までは確認できる。
    // 認証の失敗(SessionExpiredError)にならず、データか DB の権限のエラーまで進めば、JWT は受理されている。
    String? passedAuthentication(GraphqlProverResult<Map<dynamic, dynamic>> r) {
      final error = errorOf(r);
      if (r is Ok || error is PermissionDeniedError) return null;
      return '認証の段階で失敗: ${error.runtimeType} ($error)';
    }

    test(
      'どのモデルも、PocketBase の JWT は PostGraphile の検証を通る',
      onServer(() async {
        await sweep(
          graphqlClientFor(
            url,
            authorization: appAuthorization(fixture.session),
          ),
          (p, r) => passedAuthentication(r),
        );
      }),
    );

    test(
      'セッションを更新しながら(毎回 JWT を取り直して)送り続けても、毎回検証を通る',
      onServer(() async {
        final issued = fixture.client.count('/api/app/graphql-token');
        final client = graphqlClientFor(
          url,
          authorization: appAuthorization(
            fixture.session,
            margin: const Duration(minutes: 20),
          ),
        );
        for (var round = 0; round < 3; round++) {
          expect(await fixture.session.ensureSession(), isTrue);
          await sweep(
            client,
            (p, r) =>
                p.model == 'system_model' ? passedAuthentication(r) : null,
          );
          await Future<void>.delayed(const Duration(milliseconds: 1100));
        }
        expect(
          fixture.client.count('/api/app/graphql-token') - issued,
          3 * modelProbes.length,
        );
      }),
    );

    test(
      '期限切れ → セッション確認と JWT の取り直し → 再試行すると、検証を通る',
      onServer(needsSecret: true, () async {
        final expired = forgeJwt(
          secret: jwtSecret,
          claims: {
            'aud': 'postgraphile',
            'role': 'pms_user',
            'staff_id': user.appUserId,
            'exp': expIn(const Duration(seconds: -120)),
          },
        );
        final probe = modelProbes.first;
        Future<GraphqlProverResult<Map<dynamic, dynamic>>> run(
          Future<String?> Function() auth,
        ) =>
            GraphQLClientProvider(
              url,
              graphQLClient: graphqlClientFor(url, authorization: auth),
            ).query(
              QueryOptions(
                document: probe.document,
                variables: probe.variables,
              ),
            );

        final first = await run(() async => 'Bearer $expired');
        expect(errorOf(first), isA<SessionExpiredError>());
        expect(await fixture.session.ensureSession(), isTrue);
        final second = await run(
          appAuthorization(
            fixture.session,
            margin: const Duration(minutes: 20),
          ),
        );
        expect(passedAuthentication(second), isNull);
      }),
    );
  });

  group('セッションが切れた状態(データを取得できず、どのモデルも正しいエラーを返す)', () {
    test(
      'JWT の期限切れ: SessionExpiredError(expired, 401)',
      onServer(needsSecret: true, () async {
        final expired = forgeJwt(
          secret: jwtSecret,
          claims: {
            'aud': 'postgraphile',
            'role': 'pms_user',
            'staff_id': user.appUserId,
            'exp': expIn(const Duration(seconds: -120)),
          },
        );
        await sweep(
          graphqlClientFor(url, authorization: () async => 'Bearer $expired'),
          (p, r) => expectSessionError(r, SessionExpiredReason.expired, 401),
        );
      }),
    );

    test(
      '不正な JWT(壊れた・別の鍵・署名なし・PocketBase のトークンを流用・改ざん): SessionExpiredError(invalid, 403)',
      onServer(() async {
        final candidates = <String, String>{
          '壊れた JWT': 'abc.def.ghi',
          '別の鍵の署名': forgeJwt(
            secret: 'not-the-secret',
            claims: {
              'aud': 'postgraphile',
              'role': 'pms_user',
              'exp': expIn(const Duration(minutes: 10)),
            },
          ),
          '署名なし(alg=none)': forgeJwt(
            secret: '',
            alg: 'none',
            claims: {
              'aud': 'postgraphile',
              'role': 'pms_user',
              'exp': expIn(const Duration(minutes: 10)),
            },
          ),
          'PocketBase のトークンの流用': fixture.session.current!.token,
          '有効な JWT のロールを書き換え': tamperClaims(realJwt, {'role': 'pms_admin'}),
        };
        for (final entry in candidates.entries) {
          await sweep(
            graphqlClientFor(
              url,
              authorization: () async => 'Bearer ${entry.value}',
            ),
            (p, r) {
              final problem = expectSessionError(
                r,
                SessionExpiredReason.invalid,
                403,
              );
              return problem == null ? null : '${entry.key}: $problem';
            },
          );
        }
      }),
    );

    test(
      'セッションを破棄した(ログアウト): SessionExpiredError(missing)。サーバーへは送らない',
      onServer(() async {
        final other = await SessionFixture.open();
        await other.session.login(user.username, user.password);
        await other.session.logout();

        final graphql = CountingClient();
        final client = graphqlClientFor(
          url,
          authorization: appAuthorization(other.session),
          httpClient: graphql,
        );
        await sweep(
          client,
          (p, r) => expectSessionError(r, SessionExpiredReason.missing, -1),
        );
        expect(graphql.requests, isEmpty, reason: 'JWT を用意できないときは通信しない');
      }),
    );

    test(
      '認証サーバー(PocketBase)に接続できないだけのときは、セッション切れではなく NetworkError',
      onServer(() async {
        final offline = await PbConnection.open(
          url: 'http://127.0.0.1:1/api',
          logger: RecordingLogger(),
        );
        // 接続できない PocketBase でログイン済みの状態を作れないため、保存済みのトークンを模す。
        offline.pb.authStore.save(
          fixture.session.current!.token,
          fixture.connection.pb.authStore.record,
        );
        final session = SessionService(offline);
        expect(session.current, isNotNull);
        final graphql = CountingClient();
        await sweep(
          graphqlClientFor(
            url,
            authorization: appAuthorization(session),
            httpClient: graphql,
          ),
          (p, r) =>
              errorOf(r) is NetworkError ? null : '${errorOf(r).runtimeType}',
        );
        expect(graphql.requests, isEmpty);
      }),
    );

    test(
      'JWT なし(匿名): データを返さず、PermissionDeniedError',
      onServer(() async {
        await sweep(graphqlClientFor(url), (p, r) {
          if (r is! Err<Map<dynamic, dynamic>>) return 'Ok(データが返った): $r';
          if (r.error is! PermissionDeniedError) {
            return '${r.error.runtimeType}';
          }
          return null;
        });
      }),
    );
  });
}
