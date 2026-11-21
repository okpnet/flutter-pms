/// 承認一覧の実装。アプリだけが読み込む。
///
/// - [ApprovalModule]: アプリへ組み込む口(メニューごとの「承認一覧」)
/// - [approvalGatewayProvider] / [IApprovalGateway]: 承認待ちの取得と承認の登録の取得元(既定はメモリ上。アプリが GraphQL 版に差し替える)
/// - [GraphqlApprovalGateway]: GraphQL 版の取得元(`document_approval_model`。DB のビュー `v_approval_pending`・関数 `approval_approve_many`)
/// - [approvalPasswordVerifierProvider] / [IPasswordVerifier]: 承認の前のパスワードの確認(アプリが `pbapi` につなぐ)
/// - [approvalTargetLocatorProvider]: 「参照」で移る先のパス(アプリが対象の画面に対応づける)
/// - [ApprovalAlertBanner]: ダッシュボードの「承認待ちが N 件あります」(アプリが `dashboardAlertSlotProvider` に差し込む)
/// 他の機能が使う遷移先の型は `approval_api.dart` を読み込む。
library;

export 'src/data/approval_data.dart';
export 'src/graphql/graphql_approval_gateway.dart';
export 'src/i18n/strings_provider.dart' show ApprovalStrings, approvalStringsProvider;
export 'src/page/approval_alert_banner.dart' show ApprovalAlertBanner;
export 'src/page/approval_list_page.dart' show ApprovalListPage;
export 'src/page/approval_module.dart' show ApprovalModule;
export 'src/page/approval_paths.dart';
