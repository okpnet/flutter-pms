import 'package:access_control/access_control.dart';
import 'package:auth_files/auth_files_api.dart' show LogoutDestination;
import 'package:feature_shared/feature_shared.dart'
    show commandBusProvider, entityFileTransferProvider, localeProvider;
import 'package:current_user/current_user.dart';
import 'package:backstage/backstage.dart' show backstageBootProvider;
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:graphql/client.dart';
import 'package:pbapi/pbapi.dart';
import 'package:pms_graphql/pms_graphql.dart'
    show AuditUser, AuditUserSource, SessionUnavailableException;
import 'package:plan_change/plan_change.dart' show planChangeRepositories;
import 'package:production_plan/production_plan.dart'
    show productionPlanRepositories;
import 'package:purchasing/purchasing.dart' show purchasingRepositories;
import 'package:item/item.dart' show itemRepositories;
import 'package:organization/organization.dart'
    show
        GraphqlApprovalDefaultsGateway,
        GraphqlApprovalStepsGateway,
        InMemoryApprovalStepsGateway,
        approvalStepsGatewayProvider,
        InMemoryApprovalDefaultsGateway,
        approvalDefaultsGatewayProvider,
        organizationRepositories,
        staffHistoryLookup;
import 'package:resource/resource.dart' show resourceRepositories;
import 'package:quality/quality.dart'
    show
        GraphqlAuditNoticeSource,
        GraphqlAuditPlanGateway,
        GraphqlAuditRunGateway,
        InMemoryAuditNoticeSource,
        InMemoryAuditPlanGateway,
        InMemoryAuditRunGateway,
        auditNoticeSourceProvider,
        auditPlanGatewayProvider,
        auditRunGatewayProvider;
import 'package:production_process/production_process.dart'
    show productionProcessRepositories;
import 'package:work_record/work_record.dart'
    show
        GraphqlWorkRegisterGateway,
        InMemoryWorkRegisterGateway,
        workRecordRepositories,
        workRegisterGatewayProvider;
import 'package:quality_document/quality_document.dart'
    show qualityDocumentRepositories;
import 'package:quality_common/quality_common.dart'
    show qualityCommonRepositories;
import 'package:quality/quality.dart' show qualityRepositories;
import 'package:sales/sales.dart' show salesRepositories;
import 'package:shared_master/shared_master.dart' show sharedMasterRepositories;
import 'package:system/system.dart' show systemRepositories;

import '../pocketbase/pocketbase_overrides.dart';
import '../session/pocketbase_user_identity.dart';
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

/// 更新者(ログイン中の担当者)。登録・更新・論理削除の `update_user_id`・`update_user_history_id` に渡す。
///
/// 担当者の ID は、ログインしているユーザーの身元(`current_user` の `IUserIdentitySource`。PocketBase の実装は
/// `PocketBaseUserIdentity`)から、書き込みのたびに貰う(ログインし直しに追従する)。履歴の ID は、その担当者の
/// 最新の履歴を引いて [CurrentUserHolder] が使い回す。PocketBase を使わないとき・ログインしていないときは
/// null(更新者を送らない)。
final currentUserHolderProvider = Provider<CurrentUserHolder?>((ref) {
  if (!ref.read(pocketbaseEnabledProvider)) return null;
  final client = ref.watch(graphqlClientProvider);
  if (client == null) return null;
  final identity = ref.watch(userIdentitySourceProvider);
  return CurrentUserHolder(
    identity: identity,
    // 担当者の最新の履歴の ID は、organization 機能の生成モデル(StaffHistoryLatestPage)で引く
    lookupHistory: staffHistoryLookup(client),
    // 言語コードは、使用言語(localeProvider)から、呼ぶたびに取り直す(設定の変更に追従する)
    languageCode: () => ref.read(localeProvider).languageCode,
  );
});

/// 取得元(リポジトリ)に渡す更新者の窓口。
final auditUserProvider = Provider<AuditUserSource?>((ref) {
  final holder = ref.watch(currentUserHolderProvider);
  if (holder == null) return null;
  return () async {
    final u = await holder();
    return u == null
        ? null
        : AuditUser(staffId: u.staffId, staffHistoryId: u.staffHistoryId);
  };
});

/// 画面の取得元を GraphQL 版に差し替える。[graphqlUrl] が未指定なら空(サンプルのまま)。
List<Override> graphqlOverrides() => [
  // 標準の承認パターン(会社情報の「承認」。info_app の対象ごとの列)。接続先が無いときはメモリ上
  approvalDefaultsGatewayProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryApprovalDefaultsGateway();
    return GraphqlApprovalDefaultsGateway(client, auditUser: ref.watch(auditUserProvider));
  }),
  // 監査計画の登録(選択肢は GraphQL。登録は DB の関数 audit_plan_register の導入後)。接続先が無いときはメモリ上
  auditPlanGatewayProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryAuditPlanGateway();
    return GraphqlAuditPlanGateway(client, auditUser: ref.watch(auditUserProvider));
  }),
  // 監査の通知(ダッシュボード。DB の audit_notice)。接続先が無いときはメモリ上(空)
  auditNoticeSourceProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryAuditNoticeSource();
    return GraphqlAuditNoticeSource(client, auditUser: ref.watch(auditUserProvider));
  }),
  // 監査の実施(自分の監査・項目・異常)。接続先が無いときはメモリ上
  auditRunGatewayProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryAuditRunGateway();
    return GraphqlAuditRunGateway(client, auditUser: ref.watch(auditUserProvider));
  }),
  // 承認の段(承認パターンの編集の表。ドラッグで並べ替え)。接続先が無いときはメモリ上
  approvalStepsGatewayProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryApprovalStepsGateway();
    return GraphqlApprovalStepsGateway(client, auditUser: ref.watch(auditUserProvider));
  }),
  // 実績登録: GraphQL 版(開始・終了は DB 関数)。接続先が無いときはサンプル
  workRegisterGatewayProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryWorkRegisterGateway();
    return GraphqlWorkRegisterGateway(
      client,
      auditUser: ref.watch(auditUserProvider),
    );
  }),
  entityRepositoryOverridesProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return const [];
    final auditUser = ref.watch(auditUserProvider);
    return [
      // 取得元を GraphQL にした機能は、ここに足す
      ...accessControlRepositories(client),
      // 営業: 受注・受注明細・出荷予定・出荷指示(書き込みは更新者つき。キャンセル・停止・残は読み取り専用)
      ...salesRepositories(client, auditUser: auditUser),
      // 購買: 発注・発注明細(書き込みは更新者つき。キャンセル・停止・受入済み・残は読み取り専用)
      ...purchasingRepositories(client, auditUser: auditUser),
      // 生産計画: 資材計画・生産計画(書き込みは更新者つき。停止・打ち切りは読み取り専用)
      ...productionPlanRepositories(client, auditUser: auditUser),
      // 計画変更: 計画変更の履歴・未処置一覧(読み取り専用。boolean の列で種類・動き・処置を出す)
      ...planChangeRepositories(client),
      // システム: 単位(書き込みは更新者つき。名称・読み・略称は言語コード ja の値)
      ...systemRepositories(client, auditUser: auditUser),
      // 共有マスタ: 利害関係者(書き込みは更新者つき。顧客・外部供給者・運送業者はフラグで見分ける)
      ...sharedMasterRepositories(client, auditUser: auditUser),
      // 品目: 品目区分・品目(読み取り専用。ツリーは品目ツリーの親)
      ...itemRepositories(client, auditUser: auditUser),
      // 組織: 職員・事業所・部署(読み取り専用。部署のツリーは部署ツリーの親)
      ...organizationRepositories(
        client,
        auditUser: auditUser,
        fileTransfer: ref.watch(entityFileTransferProvider),
      ),
      // 資源: 力量・資格・場所・設備(読み取り専用。場所のツリーは場所ツリーの親)
      ...resourceRepositories(
        client,
        auditUser: auditUser,
        fileTransfer: ref.watch(entityFileTransferProvider),
      ),
      // 工程: 作業・工程運用(読み取り専用。作業のツリーは作業ツリーの親)
      ...productionProcessRepositories(client),
      // 作業実績: コンテナ・成績書(読み取り専用)
      ...workRecordRepositories(client),
      // 品質管理文書: 文書階層・文書(読み取り専用。文書のツリーは文書ツリーの親)
      ...qualityDocumentRepositories(client),
      // 品質共通: リスク(読み取り専用)
      ...qualityCommonRepositories(client, auditUser: ref.watch(auditUserProvider)),
      // 品質管理: 苦情・監査・監査基準(読み取り専用)
      ...qualityRepositories(
        client,
        auditUser: auditUser,
        fileTransfer: ref.watch(entityFileTransferProvider),
      ),
    ];
  }),
];
