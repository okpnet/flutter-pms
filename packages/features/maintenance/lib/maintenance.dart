/// メンテナンス中のページ(実装)。アプリだけが読み込む。
///
/// - [MaintenanceModule]: アプリへ組み込む口(ルートは枠の外に置く)
/// - [maintenanceRedirect]: ルーターの `redirect` に使う判定(メンテナンス中は全ページをメンテナンスページへ)
/// - [maintenanceStatusProvider] / [maintenanceCheckerProvider]: 状態と確認の実体の差し込み口
/// - [HttpMaintenanceChecker]: HTTP 503 をメンテナンス中として扱う確認の実装
/// - [MaintenanceAwarePageSession]: セッション確認(page_mediator)へメンテナンスの確認を足す
/// 他の機能が使う遷移先の型は `maintenance_api.dart` を読み込む。
library;

export 'src/i18n/strings_provider.dart'
    show MaintenanceStrings, maintenanceStringsProvider;
export 'src/page/maintenance_module.dart' show MaintenanceModule;
export 'src/page/maintenance_page.dart' show MaintenancePage;
export 'src/page/maintenance_paths.dart';
export 'src/status/maintenance_checker.dart';
export 'src/status/maintenance_providers.dart';
export 'src/status/maintenance_redirect.dart';
export 'src/status/maintenance_session.dart';
export 'src/status/maintenance_status.dart';
