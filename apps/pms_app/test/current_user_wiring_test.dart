// 更新者(ログイン中のユーザー)の配線のテスト。通信は差し替えた Link で行い、サーバーには接続しない。
// 担当者の ID は認証側の身元、履歴の ID は organization 機能の生成モデル、言語コードは使用言語(localeProvider)から入る。

import 'dart:ui';

import 'package:current_user/current_user.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_app/services/graphql/graphql_overrides.dart';
import 'package:pms_app/services/session/pocketbase_user_identity.dart';

class _FixedIdentity implements IUserIdentitySource {
  _FixedIdentity(this.current);

  @override
  UserIdentity? current;
}

/// 担当者の履歴の問い合わせに、決まった履歴の ID を返す通信路。
class _HistoryLink extends Link {
  var calls = 0;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    calls++;
    return Stream.value(
      Response(
        data: {
          'allHistoryInfoStaffs': {
            'totalCount': 1,
            'pageInfo': {
              'hasNextPage': false,
              'endCursor': null,
              '__typename': 'PageInfo',
            },
            'nodes': [
              {
                'historyId': 'h-latest',
                'infoStaffId': request.variables['filter'] is Map
                    ? (request.variables['filter'] as Map)['infoStaffId']['equalTo']
                    : null,
                'revision': 2,
                '__typename': 'HistoryInfoStaff',
              },
            ],
            '__typename': 'HistoryInfoStaffsConnection',
          },
          '__typename': 'Query',
        },
        response: const {},
      ),
    );
  }
}

class _EnglishLocale extends LocaleNotifier {
  @override
  Locale build() => const Locale('en');
}

void main() {
  ProviderContainer container(_FixedIdentity identity, _HistoryLink link) =>
      ProviderContainer(
        overrides: [
          pocketbaseEnabledProvider.overrideWithValue(true),
          graphqlClientProvider.overrideWithValue(
            GraphQLClient(link: link, cache: GraphQLCache()),
          ),
          userIdentitySourceProvider.overrideWithValue(identity),
          localeProvider.overrideWith(_EnglishLocale.new),
        ],
      );

  test('更新者は、認証の担当者・生成モデルで引いた履歴の ID・使用言語から作られる', () async {
    final link = _HistoryLink();
    final c = container(
      _FixedIdentity(const UserIdentity(staffId: 's-1')),
      link,
    );
    addTearDown(c.dispose);

    final user = await c.read(currentUserHolderProvider)!();

    expect(user?.staffId, 's-1');
    expect(user?.staffHistoryId, 'h-latest');
    expect(user?.languageCode, 'en');

    final audit = await c.read(auditUserProvider)!();
    expect(audit?.staffId, 's-1');
    expect(audit?.staffHistoryId, 'h-latest');
  });

  test('使用言語を変えると、履歴を取り直さずに言語コードだけ変わる', () async {
    final link = _HistoryLink();
    final c = container(
      _FixedIdentity(const UserIdentity(staffId: 's-1')),
      link,
    );
    addTearDown(c.dispose);
    final holder = c.read(currentUserHolderProvider)!;

    expect((await holder())?.languageCode, 'en');
    c.read(localeProvider.notifier).set(const Locale('ja'));
    final changed = await holder();

    expect(changed?.languageCode, 'ja');
    expect(changed?.staffHistoryId, 'h-latest');
    expect(link.calls, 1);
  });

  test('ログインしていなければ、更新者は null(送らない)', () async {
    final c = container(_FixedIdentity(null), _HistoryLink());
    addTearDown(c.dispose);

    expect(await c.read(currentUserHolderProvider)!(), isNull);
    expect(await c.read(auditUserProvider)!(), isNull);
  });

  test('PocketBase を使わないときは、更新者の窓口が無い', () {
    final c = ProviderContainer(
      overrides: [pocketbaseEnabledProvider.overrideWithValue(false)],
    );
    addTearDown(c.dispose);

    expect(c.read(currentUserHolderProvider), isNull);
    expect(c.read(auditUserProvider), isNull);
  });
}
