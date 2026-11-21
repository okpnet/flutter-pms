/// 承認スタンプ・PDF の設定の実装。アプリだけが読み込む。
///
/// - [DocumentSettingsModule]: アプリへ組み込む口
/// - [documentSettingsGatewayProvider] / [IAppSettingsGateway]: 設定(`info_app.settings`)の取得元の差し込み口(既定はメモリ上)
/// - [GraphqlAppSettingsGateway]: GraphQL 版の取得元(`document_approval_model`)
/// - [savedAppSettingsProvider]: 保存されている設定(ほかの機能が使う。保存すると読み直す)
/// - [documentSettingsIsAdminProvider]: 管理者か(既定は閲覧のみ。アプリが認証の結果で差し替える)
/// 他の機能が使う遷移先の型は `document_settings_api.dart` を読み込む。
library;

export 'src/data/settings_draft.dart'
    show
        IAppSettingsGateway,
        InMemoryAppSettingsGateway,
        documentSettingsGatewayProvider,
        documentSettingsIsAdminProvider,
        savedAppSettingsProvider;
export 'src/graphql/graphql_app_settings_gateway.dart';
export 'src/i18n/strings_provider.dart' show DocumentSettingsStrings, documentSettingsStringsProvider;
export 'src/page/document_settings_module.dart' show DocumentSettingsModule;
export 'src/page/document_settings_page.dart' show DocumentSettingsPage;
export 'src/page/document_settings_paths.dart';
