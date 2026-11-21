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
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:quality_document/quality_document.dart'
    show GraphqlDocumentBodyGateway, InMemoryDocumentBodyGateway, documentBodyGatewayProvider, documentBodyIsAdminProvider;
import 'package:manual/manual.dart'
    show
        AppSettings,
        GraphqlManualApprovalSource,
        GraphqlManualRepository,
        InMemoryManualRepository,
        ManualGraphqlClient,
        NoManualApprovalSource,
        manualAppSettingsProvider,
        manualApprovalSourceProvider,
        manualRepositoryProvider,
        manualIsAdminProvider,
        manualPrinterNameProvider;

import '../graphql/graphql_overrides.dart'
    show auditUserProvider, graphqlClientProvider, pocketbaseEnabledProvider;
import '../session/pocketbase_user_identity.dart';

/// マニュアル(Wiki)の編集権限を、アプリが認証の結果で差し込む。
///
/// - 管理者(`role=admin`)だけが編集できる(それ以外は閲覧のみ)。権限は保持せず、呼ぶたびに今の身元から引く。
///   ログイン・ログアウトで作り直すため、ログインユーザー(`userSummaryProvider`)を見張る。
/// - PocketBase に接続しない環境(サンプル)は、判定する元がないため、編集できる側にする(メニューの許可と同じ)。
/// - 更新者の名前は、既定のまま(ログインユーザーの表示名)。PDF の「出力した人」も、ログインユーザーの表示名。
/// - 承認の状態・アプリの設定(スタンプ・PDF)の取得元は、DB の文書とつなぐまで既定(承認なし・標準の設定)。
List<Override> manualOverrides() => [
  // マニュアルの取得元・承認の状態: GraphQL に接続するときは DB(文書・文書コンテンツ・共有テキスト。ビュー v_document_publication)、しないときはメモリ上のサンプル
  manualRepositoryProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return InMemoryManualRepository();
    return GraphqlManualRepository(ManualGraphqlClient(client, auditUser: ref.watch(auditUserProvider)));
  }),
  manualApprovalSourceProvider.overrideWith((ref) {
    final client = ref.watch(graphqlClientProvider);
    if (client == null) return const NoManualApprovalSource();
    return GraphqlManualApprovalSource(ManualGraphqlClient(client));
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
    return GraphqlApprovalPatternSource(client);
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
  manualIsAdminProvider.overrideWith((ref) {
    ref.watch(userSummaryProvider);
    if (!ref.read(pocketbaseEnabledProvider)) return true;
    return ref.read(userIdentitySourceProvider).current?.isAdmin ?? false;
  }),
];

