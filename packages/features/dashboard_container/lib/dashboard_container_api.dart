/// 件数のコンテナの契約。件数の元を提供する機能・アプリと、コンテナを置くダッシュボードの側は、こちらを読み込む。
///
/// - 件数の元・フィルタグループ・配置の型
/// - ダッシュボードに置く部品(領域・編集)と、配置の状態。このプロジェクトは部品を提供するため、
///   部品も契約に含める(実装の詳細は `lib/src` にあり、参照しない)。
library;

export 'src/model/count_container_spec.dart';
export 'src/model/count_source.dart';
export 'src/i18n/strings_provider.dart'
    show DashboardContainerStrings, dashboardContainerStringsProvider;
export 'src/model/count_sources_provider.dart';
export 'src/settings/dashboard_container_providers.dart';
export 'src/settings/dashboard_container_settings.dart';
export 'src/view/count_container_view.dart';
export 'src/view/dashboard_container_area.dart';
export 'src/view/dashboard_container_editor.dart';
