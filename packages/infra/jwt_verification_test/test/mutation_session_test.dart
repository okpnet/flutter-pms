// 書き込み(ミューテーション)の検証: JWT で登録・論理削除を行い、セッション切れでは何も変わらない。
//
// 使うモデルは access_control_model の「アクセスパス」(AccessPathPage)。
//   登録(Create)→ 読み込み(Read)→ 論理削除・復元(Remove の remove=true/false)
// 作る行は `jwt-test/…` の usecase_path を持ち、最後に論理削除する(行は残る。物理削除の API は無い)。
//
// 権限の前提(検証用 DB):
//   pms_admin … 登録・更新・削除ができる
//   pms_user  … 更新・削除ができる。登録(INSERT)は、権限を付けたら通る [権限が無い間は失敗する]
@Tags(['server'])
library;

import 'dart:convert';

import 'package:access_control_model/access_control_model.dart' as ac;
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';

import 'support/app_authorization.dart';
import 'support/environment.dart';
import 'support/fixtures.dart';
import 'support/jwt_tools.dart';

const _anyId = '00000000-0000-0000-0000-000000000000';

void main() {
  String? skipReason;
  late String url;
  late PocketBaseAdmin admin;
  late SessionFixture adminSession;
  late SessionFixture userSession;
  late TestUser userRow;
  late String appId;
  late String namesId;
  final createdIds = <String>[];
  final suffix = DateTime.now().millisecondsSinceEpoch.toRadixString(36);
  var sequence = 0;

  String nextPath() => 'jwt-test/$suffix/${++sequence}';

  GraphQLClientProvider providerFor(
    Future<String?> Function()? authorization, {
    CountingClient? http,
  }) => GraphQLClientProvider(
    url,
    timeLimit: 30,
    graphQLClient: graphqlClientFor(
      url,
      authorization: authorization,
      httpClient: http,
    ),
  );

  GraphQLClientProvider adminProvider() =>
      providerFor(appAuthorization(adminSession.session));
  GraphQLClientProvider userProvider() =>
      providerFor(appAuthorization(userSession.session));

  Future<GraphqlProverResult<Map<String, dynamic>>> create(
    GraphQLClientProvider p,
    String path,
  ) => p.mutate(
    MutationOptions(
      document: ac.documentNodeMutationAccessPathPageCreate,
      variables: {
        'infoAppId': appId,
        'names': namesId,
        'usecasePath': path,
        'remarks': 'jwt verification test',
      },
    ),
  );

  Future<GraphqlProverResult<Map<String, dynamic>>> setRemoved(
    GraphQLClientProvider p,
    String id,
    bool removed,
  ) => p.mutate(
    MutationOptions(
      document: ac.documentNodeMutationAccessPathPageRemove,
      variables: {'infoAccessPathId': id, 'remove': removed},
    ),
  );

  /// [path] の行を管理者の JWT で探す。[removed] は論理削除済みの行を探すか。
  Future<List<Map<dynamic, dynamic>>> find(
    String path, {
    bool removed = false,
  }) async {
    final result = await adminProvider().query(
      QueryOptions(
        document: ac.documentNodeQueryAccessPathPageRead,
        variables: {
          'first': 10,
          'languageCodeId': _anyId,
          'removed': removed,
          'filter': {
            'usecasePath': {'equalTo': path},
          },
        },
      ),
    );
    expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
    final nodes =
        (result as Ok<Map<dynamic, dynamic>>)
                .value['allInfoAccessPaths']['nodes']
            as List;
    return nodes.cast<Map<dynamic, dynamic>>();
  }

  String idOf(GraphqlProverResult<Map<String, dynamic>> r) {
    expect(r, isA<Ok<Map<String, dynamic>>>(), reason: '$r');
    return (r as Ok<Map<String, dynamic>>)
            .value['createInfoAccessPath']['infoAccessPath']['infoAccessPathId']
        as String;
  }

  setUpAll(() async {
    skipReason = await unavailableReason();
    if (skipReason != null) return;
    url = (await findGraphqlUrl())!;
    admin = await PocketBaseAdmin.signIn();
    final adminRow = await admin.createUser(role: 'admin');
    userRow = await admin.createUser();
    adminSession = await SessionFixture.open();
    await adminSession.session.login(adminRow.username, adminRow.password);
    userSession = await SessionFixture.open();
    await userSession.session.login(userRow.username, userRow.password);
    // アクセスパスは、アプリ(info_app)に属する。既存のアプリのIDを使う。
    final apps = await adminProvider().query(
      QueryOptions(
        document: ac.documentNodeQueryAppPageRead,
        variables: {'first': 1, 'languageCodeId': _anyId},
      ),
    );
    appId =
        ((apps as Ok<Map<dynamic, dynamic>>).value['allInfoApps']['nodes']
                    as List)
                .first['infoAppId']
            as String;
    // names(呼称)も必須。既存の呼称(shared_appellations)を流用する。
    final raw = await rawGraphql(
      url,
      '{ allSharedAppellations(first: 1) { nodes { sharedAppellationsId } } }',
      authorization:
          'Bearer ${(await adminSession.session.graphqlToken()).token}',
    );
    namesId =
        (jsonDecode(raw.body)['data']['allSharedAppellations']['nodes'] as List)
                .first['sharedAppellationsId']
            as String;
  });

  tearDownAll(() async {
    if (skipReason != null) return;
    // 作った行を論理削除する(管理者の JWT)。
    for (final id in createdIds) {
      try {
        await setRemoved(adminProvider(), id, true);
      } catch (_) {}
    }
    await admin.cleanUp();
  });

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

  Matcher failsWith<E extends GraphqlProviderException>() =>
      isA<Err<Map<String, dynamic>>>().having(
        (r) => r.error,
        'error',
        isA<E>(),
      );

  group('有効な JWT で書き込める', () {
    test(
      '管理者(pms_admin): 登録 → 読み込み → 論理削除 → 復元',
      onServer(() async {
        final path = nextPath();
        final id = idOf(await create(adminProvider(), path));
        createdIds.add(id);

        final rows = await find(path);
        expect(rows, hasLength(1));
        expect(rows.single['usecasePath'], path);

        expect(await setRemoved(adminProvider(), id, true), isA<Ok>());
        expect(await find(path), isEmpty, reason: '論理削除すると既定の一覧から消える');
        expect(await find(path, removed: true), hasLength(1));

        expect(await setRemoved(adminProvider(), id, false), isA<Ok>());
        expect(await find(path), hasLength(1), reason: '復元できる');
      }),
    );

    test(
      '一般(pms_user): 既存の行を論理削除・復元できる(更新と削除の権限)',
      onServer(() async {
        final path = nextPath();
        final id = idOf(await create(adminProvider(), path));
        createdIds.add(id);

        expect(await setRemoved(userProvider(), id, true), isA<Ok>());
        expect(await find(path), isEmpty);
        expect(await setRemoved(userProvider(), id, false), isA<Ok>());
        expect(await find(path), hasLength(1));
      }),
    );

    test(
      '一般(pms_user)が登録できる [DB の pms_user に INSERT 権限が要る]',
      onServer(() async {
        final path = nextPath();
        final result = await create(userProvider(), path);
        expect(
          result,
          isA<Ok<Map<String, dynamic>>>(),
          reason:
              '$result\n"permission denied for table" なら、検証用 DB に次が必要:\n'
              '  GRANT INSERT ON ALL TABLES IN SCHEMA tests TO pms_user;\n'
              '  GRANT USAGE ON ALL SEQUENCES IN SCHEMA tests TO pms_user;',
        );
        createdIds.add(idOf(result));
        expect(await find(path), hasLength(1));
      }),
    );
  });

  group('セッションが切れた状態では、書き込めず、データは変わらない', () {
    late String existingId;
    late String existingPath;

    setUp(() async {
      if (skipReason != null) return;
      existingPath = nextPath();
      existingId = idOf(await create(adminProvider(), existingPath));
      createdIds.add(existingId);
    });

    String expired() => forgeJwt(
      secret: jwtSecret,
      claims: {
        'aud': 'postgraphile',
        'role': 'pms_admin',
        'staff_id': 'jwt-test',
        'exp': expIn(const Duration(seconds: -120)),
      },
    );

    test(
      '期限切れの JWT: 登録も論理削除も SessionExpiredError(expired)。何も変わらない',
      onServer(needsSecret: true, () async {
        final p = providerFor(() async => 'Bearer ${expired()}');
        final path = nextPath();
        final created = await create(p, path);
        expect(created, failsWith<SessionExpiredError>());
        expect(
          (created as Err).error as SessionExpiredError,
          isA<SessionExpiredError>().having(
            (e) => e.reason,
            'reason',
            SessionExpiredReason.expired,
          ),
        );
        expect(await find(path), isEmpty, reason: '登録されていない');

        expect(
          await setRemoved(p, existingId, true),
          failsWith<SessionExpiredError>(),
        );
        expect(await find(existingPath), hasLength(1), reason: '論理削除されていない');
      }),
    );

    test(
      '改ざんした JWT(ロールの昇格)・別の鍵: SessionExpiredError(invalid)。何も変わらない',
      onServer(() async {
        final base = (await userSession.session.graphqlToken()).token;
        final candidates = {
          '一般の JWT のロールを pms_admin に書き換え': tamperClaims(base, {
            'role': 'pms_admin',
          }),
          '別の鍵の署名': forgeJwt(
            secret: 'not-the-secret',
            claims: {
              'aud': 'postgraphile',
              'role': 'pms_admin',
              'exp': expIn(const Duration(minutes: 10)),
            },
          ),
        };
        for (final entry in candidates.entries) {
          final p = providerFor(() async => 'Bearer ${entry.value}');
          final path = nextPath();
          final created = await create(p, path);
          expect(created, failsWith<SessionExpiredError>(), reason: entry.key);
          expect(
            ((created as Err).error as SessionExpiredError).reason,
            SessionExpiredReason.invalid,
            reason: entry.key,
          );
          expect(await find(path), isEmpty, reason: '${entry.key}: 登録されていない');
          expect(
            await setRemoved(p, existingId, true),
            failsWith<SessionExpiredError>(),
          );
        }
        expect(await find(existingPath), hasLength(1));
      }),
    );

    test(
      '匿名(JWT なし): PermissionDeniedError。何も変わらない',
      onServer(() async {
        final p = providerFor(null);
        final path = nextPath();
        expect(await create(p, path), failsWith<PermissionDeniedError>());
        expect(await find(path), isEmpty);
        expect(
          await setRemoved(p, existingId, true),
          failsWith<PermissionDeniedError>(),
        );
        expect(await find(existingPath), hasLength(1));
      }),
    );

    test(
      'セッションを破棄した(ログアウト): SessionExpiredError(missing)。サーバーへは送らない',
      onServer(() async {
        final other = await SessionFixture.open();
        await other.session.login(userRow.username, userRow.password);
        await other.session.logout();
        final http = CountingClient();
        final p = providerFor(appAuthorization(other.session), http: http);

        final created = await create(p, nextPath());
        expect(created, failsWith<SessionExpiredError>());
        expect(
          ((created as Err).error as SessionExpiredError).reason,
          SessionExpiredReason.missing,
        );
        expect(
          await setRemoved(p, existingId, true),
          failsWith<SessionExpiredError>(),
        );
        expect(http.requests, isEmpty);
        expect(await find(existingPath), hasLength(1));
      }),
    );
  });
}
