/// マニュアル(Wiki)の実装。アプリだけが読み込む。
///
/// - [ManualModule]: アプリへ組み込む口(メニューはルートのページごとに 1 項目)
/// - [manualRepositoryProvider] / [IManualRepository]: 取得元の差し込み口(既定はメモリ上のサンプル)
/// - [manualIsAdminProvider]: 管理者か(既定は閲覧のみ。アプリが認証の結果で差し替える)
/// - [manualEditorNameProvider]: 更新者として記録する名前(既定はログインユーザーの表示名)
/// 他の機能が使う遷移先の型は `manual_api.dart` を読み込む。
library;

export 'package:approval_stamp/approval_stamp.dart' show AppSettings, ApprovalStepInfo;
export 'src/data/in_memory_manual_repository.dart';
export 'src/data/manual_approval.dart';
export 'src/data/manual_pdf_service.dart';
export 'src/data/manual_seed.dart' show manualSeedPages;
export 'src/data/manual_providers.dart'
    show
        manualEditorNameProvider,
        manualIsAdminProvider,
        manualProvider,
        manualRepositoryProvider,
        ManualState;
export 'src/data/manual_repository.dart';
export 'src/graphql/graphql_manual_approval_source.dart' show GraphqlManualApprovalSource;
export 'src/graphql/graphql_manual_client.dart' show ManualGraphqlClient;
export 'src/graphql/graphql_manual_repository.dart' show GraphqlManualRepository;
export 'src/i18n/strings_provider.dart' show ManualStrings, manualStringsProvider;
export 'src/model/manual_page_record.dart';
export 'src/model/manual_wiki.dart';
export 'src/page/manual_module.dart' show ManualModule;
export 'src/page/manual_paths.dart';
export 'src/page/manual_view_page.dart' show ManualViewPage;
