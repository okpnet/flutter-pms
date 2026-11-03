import 'package:access_control/access_control.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:graphql/client.dart';

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

/// 認証ヘッダー(`Authorization: Bearer <JWT>`)。トークンが無いときは付けない。
String? bearerOf(String? token) =>
    token == null || token.isEmpty ? null : 'Bearer $token';

/// [graphqlUrl] が指定されているときの [GraphQLClient]。未指定は null。
final graphqlClientProvider = Provider<GraphQLClient?>((ref) {
  if (graphqlUrl.isEmpty) return null;
  final link = AuthLink(
    getToken: () => bearerOf(ref.read(graphqlTokenProvider)),
  ).concat(HttpLink(graphqlUrl));
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
    ];
  }),
];
