/// ダッシュボードに置く件数のコンテナ(実装の入口)。契約の型・部品は `dashboard_container_api.dart` が公開する。
///
/// - [DashboardContainerArea]: ダッシュボードに置く領域。表示するときに、設定から配置を読み込む
/// - [DashboardContainerEditor]: 配置の編集(コンテナ・項目の追加・削除・並び替え・大きさ)
/// - [CountContainerView] / [CountTileView]: コンテナ(Full・1/2・1/4)と、件数の項目
/// - [CountContainerSpec] / [CountTileSpec] / [CountContainerSize]: 配置(設定として保存する形)
/// - [ICountSource] / [CountFilterGroup] / [CountFilterOption] / [RepositoryCountSource]: 件数の元
/// - [countSourcesProvider] / [dashboardContainersProvider]: 差し込み口と、配置の状態
library;

export 'dashboard_container_api.dart';
