/// ダッシュボードに置く件数のコンテナ。
///
/// - [DashboardContainerArea]: ダッシュボードに置く領域。表示するときに、設定から配置を読み込む
/// - [CountContainerView] / [CountTileView]: コンテナ(Full・1/2・1/4)と、件数の項目
/// - [CountContainerSpec] / [CountTileSpec] / [CountContainerSize]: 配置(設定として保存する形)
/// - [ICountSource] / [CountFilterGroup] / [CountFilterOption]: 件数の元と、対にするフィルタグループ
/// - [RepositoryCountSource]: 件数を返す取得元(`IDataRepository<int>`)から数える標準の実装
/// 件数の元を提供する側が読み込む型は `dashboard_container_api.dart`。
/// - [countSourcesProvider] / [dashboardContainersProvider]: 差し込み口と、配置の状態
library;

export 'src/i18n/strings_provider.dart'
    show DashboardContainerStrings, dashboardContainerStringsProvider;
export 'dashboard_container_api.dart';
export 'src/settings/dashboard_container_providers.dart';
export 'src/settings/dashboard_container_settings.dart';
export 'src/view/count_container_view.dart';
export 'src/view/dashboard_container_area.dart';
