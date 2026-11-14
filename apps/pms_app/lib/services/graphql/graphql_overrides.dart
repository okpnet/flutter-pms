import 'package:access_control/access_control.dart';
import 'package:auth_files/auth_files_api.dart' show LogoutDestination;
import 'package:feature_shared/feature_shared.dart' show commandBusProvider;
import 'package:backstage/backstage.dart' show backstageBootProvider;
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:graphql/client.dart';
import 'package:pbapi/pbapi.dart';
import 'package:pms_graphql/pms_graphql.dart' show SessionUnavailableException;
import 'package:production_plan/production_plan.dart' show productionPlanRepositories;
import 'package:purchasing/purchasing.dart' show purchasingRepositories;
import 'package:item/item.dart' show itemRepositories;
import 'package:organization/organization.dart' show organizationRepositories;
import 'package:sales/sales.dart' show salesRepositories;
import 'package:shared_master/shared_master.dart' show sharedMasterRepositories;
import 'package:system/system.dart' show systemRepositories;

import '../pocketbase/pocketbase_overrides.dart';
import '../router/root_router.dart' show rootRouterProvider;
import 'package:page_mediator_extension/page_mediator_extension.dart';

/// GraphQL(PostGraphile)のエンドポイント。`--dart-define=GRAPHQL_URL=http://.../graphql` で指定する。
/// 未指定のときは、サンプル(メモリ上)の取得元のまま動く。
const graphqlUrl = String.fromEnvironment('GRAPHQL_URL');

/// ログインユーザーの GraphQL 用 JWT(PocketBase の `/api/app/graphql-token`)。
/// ログインできたら [GraphqlTokenNotifier.set] で保存し、ログアウトで消す。期限(既定15分)の前に取り直す。
/// 通信のたびに読むので、更新すれば次の通信から反映される。
final graphqlTokenProvider = NotifierProvider<GraphqlTokenNotifier, String?>(
  GraphqlTokenNotifier.new,
);

class GraphqlTokenNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void set(String? token) => state = token;
}

/// GraphQL の通信ごとに付ける認証ヘッダー(`Authorization`)の値を返す。
///
/// [pocketbaseUrl] が指定されているときは、PocketBase のセッション(`pbapi` の `SessionService.graphqlToken`)から
/// GraphQL 用の JWT を得る。期限の手前までは取得済みを使い回し、切れたら取り直す。ログインしていない(または取得できない)
/// ときは [SessionUnavailableException] を投げる(通信しない。結果は `SessionExpiredError`(missing)になる。
/// 認証サーバーに接続できないだけのときは `transient: true` で、`NetworkError`になる)。
/// ヘッダーを付けずに送ると、匿名のロールで `permission denied` になり、セッション切れと区別できないため。
/// 未指定のときは [graphqlTokenProvider] の値を使う(テスト・手動の指定用。トークンが無ければヘッダーを付けない)。
/// PocketBase を使うか([pocketbaseUrl] の指定の有無)。テストで上書きできる。
final pocketbaseEnabledProvider = Provider<bool>(
  // 接続先は起動時に決まった値(起動時の指定 > 裏設定 > 既定値)。実行中に裏設定を保存しても、ここは変わらない(再起動で反映)
  (ref) =>
      (ref.watch(backstageBootProvider).values.pocketbaseUrl ?? '').isNotEmpty,
);

/// GraphQL にアクセスする前の確認(メンテナンス・セッション)。PocketBase を使うときだけ行う。
final graphqlAccessGuardProvider = Provider<GraphqlAccessGuard>(
  (ref) => GraphqlAccessGuard(
    session: ref.read(pageSessionMediatorProvider),
    // メンテナンス中は、ルーターの評価し直しでメンテナンスのページへ向く
    onMaintenance: () => ref.read(rootRouterProvider).refresh(),
    onSessionExpired: () => ref
        .read(commandBusProvider)
        .execute(const LogoutDestination(sessionExpired: true)),
  ),
);

final graphqlAuthorizationProvider = Provider<Future<String?> Function()>((
  ref,
) {
  return () async {
    if (ref.read(pocketbaseEnabledProvider)) {
      await ref.read(graphqlAccessGuardProvider).ensure();
      try {
        final token = await ref.read(sessionServiceProvider).graphqlToken();
        return bearerOf(token.token);
      } on PbException catch (e) {
        throw SessionUnavailableException(
          transient: e.isTransient,
          message: e.logMessage,
        );
      }
    }
    return bearerOf(ref.read(graphqlTokenProvider));
  };
});

/// 認証ヘッダー(`Authorization: Bearer <JWT>`)。トークンが無いときは付けない。
String? bearerOf(String? token) =>
    token == null || token.isEmpty ? null : 'Bearer $token';

/// [graphqlUrl] が指定されているときの [GraphQLClient]。未指定は null。
final graphqlClientProvider = Provider<GraphQLClient?>((ref) {
  final url = ref.watch(backstageBootProvider).values.graphqlUrl ?? '';
  if (url.isEmpty) return null;
  final link = AuthLink(
    getToken: ref.read(graphqlAuthorizationProvider),
  ).concat(HttpLink(url));
  return GraphQLClient(link: link, cache: GraphQLCache());
});

/// 画面の取得元を GraphQL 版に差し替える。[graphqlUrl] が未指定なら空(サンプルのまま)。
List<Override> graphqlOverrides() => [
  entityRepositoryOverridesProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return const [];
    return [
      // 取得元を GraphQL にした機能は、ここに足す
      ...accessControlRepositories(client),
      // 営業: 受注・受注明細(読み取り専用。キャンセル・停止・残も出る)
      ...salesRepositories(client),
      // 購買: 発注・発注明細(読み取り専用。キャンセル・停止・受入済み・残も出る)
      ...purchasingRepositories(client),
      // 生産計画: 資材計画・生産計画(読み取り専用。停止・打ち切りも出る)
      ...productionPlanRepositories(client),
      // システム: 単位(読み取り専用。名称・読み・略称は言語コード ja の値)
      ...systemRepositories(client),
      // 共有マスタ: 利害関係者(読み取り専用。顧客・外部供給者・運送業者はフラグで見分ける)
      ...sharedMasterRepositories(client),
      // 品目: 品目区分・品目(読み取り専用。ツリーは品目ツリーの親)
      ...itemRepositories(client),
      // 組織: 職員・事業所・部署(読み取り専用。部署のツリーは部署ツリーの親)
      ...organizationRepositories(client),
    ];
  }),
];
