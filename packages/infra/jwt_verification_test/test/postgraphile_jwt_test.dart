// PostGraphile 単体の検証: JWT(--jwt-secret)の検証と、拒否の応答。PocketBase は使わない。
//
// 鍵(PMS_TEST_JWT_SECRET)で JWT を作り、有効・期限切れ・改ざん・不正な署名方式などを送る。
// 実測した応答は、pms_graphql の分類(SessionExpiredError など)の元になっている。
@Tags(['server'])
library;

import 'package:flutter_test/flutter_test.dart';

import 'support/environment.dart';
import 'support/fixtures.dart';
import 'support/jwt_tools.dart';

const _query = '{ allInfoStaffs(first: 1) { totalCount } }';

void main() {
  String? skipReason;
  late String url;

  setUpAll(() async {
    skipReason = await unavailableReason(needsAdmin: false, needsSecret: true);
    if (skipReason == null) url = (await findGraphqlUrl())!;
  });

  Future<void> Function() onServer(Future<void> Function() body) => () async {
    if (skipReason != null) {
      markTestSkipped(skipReason!);
      return;
    }
    await body();
  };

  Map<String, Object?> claims({
    String role = 'pms_user',
    Object? aud = 'postgraphile',
    Object? exp = 600,
  }) => {
    'aud': ?aud,
    'role': role,
    'staff_id': 'jwt-test-staff',
    'sub': 'jwt-test-staff',
    if (exp is int) 'exp': expIn(Duration(seconds: exp)),
  };

  String valid({String role = 'pms_user'}) => forgeJwt(
    secret: jwtSecret,
    claims: claims(role: role),
  );

  Future<RawResponse> send(String? jwt) => rawGraphql(
    url,
    _query,
    authorization: jwt == null ? null : 'Bearer $jwt',
  );

  /// 検証(署名・期限・aud)で拒否された。
  Matcher rejectedAs(int status, String message) => isA<RawResponse>()
      .having((r) => r.status, 'status', status)
      .having((r) => r.messages.join('\n'), 'message', contains(message))
      .having((r) => r.hasData, 'hasData', isFalse);

  /// 検証(署名・期限・aud)は通った(その後のロールの切り替えや権限の結果は問わない)。
  final passedVerification = isA<RawResponse>().having(
    (r) => r.status,
    'status',
    isNot(anyOf(401, 403)),
  );

  group('拒否される JWT(データを返さない)', () {
    test(
      '期限切れは 401 jwt expired(許容の30秒を過ぎたもの)',
      onServer(() async {
        final jwt = forgeJwt(secret: jwtSecret, claims: claims(exp: -120));
        expect(await send(jwt), rejectedAs(401, 'jwt expired'));
      }),
    );

    test(
      '壊れた JWT・別の鍵の署名・署名なし(alg=none)・別のアルゴリズムは 403',
      onServer(() async {
        expect(await send('abc.def.ghi'), rejectedAs(403, 'invalid token'));
        expect(
          await send(forgeJwt(secret: 'not-the-secret', claims: claims())),
          rejectedAs(403, 'invalid signature'),
        );
        expect(
          await send(forgeJwt(secret: '', claims: claims(), alg: 'none')),
          rejectedAs(403, 'jwt signature is required'),
        );
        expect(
          await send(
            forgeJwt(secret: jwtSecret, claims: claims(), alg: 'HS512'),
          ),
          rejectedAs(403, 'invalid algorithm'),
          reason: '同じ鍵でもアルゴリズムが違えば拒否(HS256 のみ)',
        );
      }),
    );

    test(
      '対象(aud)が違う・無い JWT は 403',
      onServer(() async {
        expect(
          await send(
            forgeJwt(
              secret: jwtSecret,
              claims: claims(aud: 'other'),
            ),
          ),
          rejectedAs(403, 'jwt audience invalid'),
        );
        expect(
          await send(forgeJwt(secret: jwtSecret, claims: claims(aud: null))),
          rejectedAs(403, 'jwt audience invalid'),
        );
      }),
    );

    test(
      'クレームを書き換えると署名が合わず 403(利用者がロールを管理者へ上げられない)',
      onServer(() async {
        final tampered = tamperClaims(valid(), {
          'role': 'pms_admin',
          'staff_id': 'someone-else',
        });
        expect(await send(tampered), rejectedAs(403, 'invalid signature'));
        expect(
          await send(
            tamperClaims(valid(), {'exp': expIn(const Duration(days: 365))}),
          ),
          rejectedAs(403, 'invalid signature'),
          reason: '期限の延長も不可',
        );
      }),
    );

    test(
      '署名が正しくても、権限のないロール(postgres など)へは切り替えられない',
      onServer(() async {
        for (final role in ['postgres', 'authenticator', 'pg_read_all_data']) {
          final response = await send(valid(role: role));
          expect(response, passedVerification, reason: '署名は正しい');
          expect(response.hasData, isFalse, reason: '$role でデータが返ってはいけない');
          expect(
            response.messages.join('\n'),
            contains('permission denied'),
            reason: '$role へ切り替えられてはいけない',
          );
        }
      }),
    );

    test(
      'JWT なし(匿名)は、データを返さない(HTTP 200 の permission denied)',
      onServer(() async {
        final response = await send(null);
        expect(response.status, 200);
        expect(response.hasData, isFalse);
        expect(response.messages.join('\n'), contains('permission denied'));
      }),
    );
  });

  group('受理される JWT(検証を通る)', () {
    test(
      '期限の許容(30秒)の範囲内の期限切れは、検証を通る',
      onServer(() async {
        final jwt = forgeJwt(secret: jwtSecret, claims: claims(exp: -10));
        expect(await send(jwt), passedVerification);
      }),
    );

    test(
      '【既知のリスク】期限(exp)の無い JWT も検証を通る',
      onServer(() async {
        // PocketBase は常に exp を付けるため通常は起きないが、鍵が漏れると期限の無いトークンを作られる。
        // 期限の必須化は PostGraphile 側の設定の変更が要る(実施ログの提案を参照)。
        // このテストは現状の挙動を記録する。直したら、expect を rejectedAs に変える。
        final jwt = forgeJwt(secret: jwtSecret, claims: claims(exp: null));
        expect(await send(jwt), passedVerification);
      }),
    );

    test(
      '有効な JWT(pms_user)でデータを取得できる [検証用 DB に authenticator → pms_user の GRANT と、'
      'スキーマの USAGE が要る]',
      onServer(() async {
        final response = await send(valid());
        expect(
          response.hasData,
          isTrue,
          reason:
              'status=${response.status} ${response.messages.join(" / ")}\n'
              '"permission denied to set role" なら、検証用 DB に次が必要:\n'
              '  GRANT pms_user, pms_admin TO authenticator;\n'
              '  GRANT USAGE ON SCHEMA tests TO pms_user;',
        );
      }),
    );
  });
}
