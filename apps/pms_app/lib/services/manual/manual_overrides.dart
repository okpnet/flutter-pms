import 'package:document_settings/document_settings.dart'
    show
        GraphqlApprovalPatternSource,
        GraphqlAppSettingsGateway,
        InMemoryAppSettingsGateway,
        InMemoryApprovalPatternSource,
        documentSettingsPatternSourceProvider,
        documentSettingsGatewayProvider,
        documentSettingsIsAdminProvider,
        savedAppSettingsProvider;
import 'package:access_control_model/access_control_client.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show FutureProvider;
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:logger_provider/logger_provider.dart';
import 'package:quality_document/quality_document.dart'
    show
        GraphqlDocumentBodyGateway,
        InMemoryDocumentBodyGateway,
        NoDocumentApprovalSource,
        documentApprovalSourceProvider,
        documentBodyGatewayProvider,
        documentBodyIsAdminProvider;
import 'package:manual/manual.dart'
    show
        AppSettings,
        GraphqlManualApprovalSource,
        IManualApprovalSource,
        GraphqlManualRepository,
        InMemoryManualRepository,
        ManualGraphqlClient,
        NoManualApprovalSource,
        manualAppSettingsProvider,
        manualApprovalSourceProvider,
        manualRepositoryProvider,
        manualCanEditProvider,
        manualPrinterNameProvider;

import '../graphql/graphql_overrides.dart'
    show auditUserProvider, graphqlClientProvider, pocketbaseEnabledProvider;
import '../session/pocketbase_user_identity.dart';
import 'document_approval_adapter.dart';

/// マニュアル(Wiki)の編集権限を、アプリが認証の結果で差し込む。
///
/// - 管理者(`role=admin`)だけが編集できる(それ以外は閲覧のみ)。権限は保持せず、呼ぶたびに今の身元から引く。
///   ログイン・ログアウトで作り直すため、ログインユーザー(`userSummaryProvider`)を見張る。
/// - PocketBase に接続しない環境(サンプル)は、判定する元がないため、編集できる側にする(メニューの許可と同じ)。
/// - 更新者の名前は、既定のまま(ログインユーザーの表示名)。PDF の「出力した人」も、ログインユーザーの表示名。
/// - 承認の状態・アプリの設定(スタンプ・PDF)の取得元は、DB の文書とつなぐまで既定(承認なし・標準の設定)。
///
/// [sampleApprovalSource] は、GraphQL に接続しないとき(サンプル)の承認の取得元(評価用のアプリ `pms_app_example` が、承認待ちの文書と
/// 申請の動きを再現するために渡す)。省略は承認なし。
List<Override> manualOverrides({IManualApprovalSource? sampleApprovalSource}) => [
  // マニュアルの取得元・承認の状態: GraphQL に接続するときは DB(文書・文書コンテンツ・共有テキスト。ビュー v_document_publication)、しないときはメモリ上のサンプル
  manualRepositoryProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryManualRepository();
    return GraphqlManualRepository(ManualGraphqlClient(client, auditUser: ref.watch(auditUserProvider)));
  }),
  manualApprovalSourceProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return sampleApprovalSource ?? const NoManualApprovalSource();
    return GraphqlManualApprovalSource(ManualGraphqlClient(client));
  }),
  // 品質管理文書の本文の承認の状態: GraphQL に接続するときは DB のビュー(マニュアルと同じ)、しないときは承認なし
  documentApprovalSourceProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return const NoDocumentApprovalSource();
    return GraphqlDocumentApprovalAdapter(client, GraphqlManualApprovalSource(ManualGraphqlClient(client)));
  }),
  // 文書コンテンツの本文(品質管理文書)。GraphQL に接続するときは DB(共有テキスト)、しないときはメモリ上。編集は管理者だけ
  documentBodyGatewayProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryDocumentBodyGateway();
    return GraphqlDocumentBodyGateway(client);
  }),
  documentBodyIsAdminProvider.overrideWith((ref) {
    ref.watch(userSummaryProvider);
    if (!ref.read(pocketbaseEnabledProvider)) return true;
    return ref.read(userIdentitySourceProvider).current?.isAdmin ?? false;
  }),
  // 承認スタンプ・PDF の設定(info_app.settings)。GraphQL に接続するときは DB の値、しないときはメモリ上(標準)
  documentSettingsGatewayProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryAppSettingsGateway();
    return GraphqlAppSettingsGateway(client, auditUser: ref.watch(auditUserProvider));
  }),
  // 承認パターンの選択肢(設定画面の「承認パターン」)。GraphQL に接続するときは DB(mstr_approval_pattern)、しないときは空
  documentSettingsPatternSourceProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryApprovalPatternSource();
    return GraphqlApprovalPatternSource(client, auditUser: ref.watch(auditUserProvider));
  }),
  // 変更できるのは管理者だけ(マニュアルの編集と同じ判定)
  documentSettingsIsAdminProvider.overrideWith((ref) {
    ref.watch(userSummaryProvider);
    if (!ref.read(pocketbaseEnabledProvider)) return true;
    return ref.read(userIdentitySourceProvider).current?.isAdmin ?? false;
  }),
  // マニュアルの PDF は、保存されている設定(標準を含む)に従う。設定画面で保存すると読み直す
  manualAppSettingsProvider.overrideWith(
    (ref) => ref.watch(savedAppSettingsProvider).value ?? AppSettings.standard,
  ),
  manualPrinterNameProvider.overrideWith((ref) => ref.watch(userSummaryProvider)?.name ?? ''),
  // 編集の権限: 管理者は常に可。それ以外は、アクセスパス `/manual` の書き込み(部署・担当者のアクセス権)がある人だけ
  manualCanEditProvider.overrideWith((ref) {
    ref.watch(userSummaryProvider);
    if (!ref.read(pocketbaseEnabledProvider)) return true;
    final session = ref.read(userIdentitySourceProvider).current;
    if (session == null) return false;
    if (session.isAdmin) return true;
    return ref.watch(manualWritePermissionProvider).value ?? false;
  }),
];

/// アクセスパス `/manual` の書き込みの権限(担当者の実効アクセスパスの `canWrite`)。取り出せないときは false(編集できない側)。
/// 権限は保持せず、ログインユーザーが変わるたびに引き直す。
final manualWritePermissionProvider = FutureProvider<bool>((ref) async {
  ref.watch(userSummaryProvider);
  final session = ref.read(userIdentitySourceProvider).current;
  final client = ref.read(graphqlClientProvider);
  if (session == null || client == null) return false;
  try {
    final effective = await AccessControlClient(
      client: client,
    ).listEffectiveAccessPaths(staffId: session.staffId);
    return effective.any((e) => e.usecasePath == '/manual' && e.canWrite);
  } catch (e, s) {
    ref.read(loggerProvider).error('[pms_app] マニュアルの編集の権限を取り出せませんでした', ex: e, trace: s);
    return false;
  }
});

