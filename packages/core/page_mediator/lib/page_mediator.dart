/// ページ用の拡張(Mediator)。ページが、データ取得・設定の保存・セッション確認を
/// 具体的な実装(data_strategist・settings_keeper・認証)を知らずに使えるようにする。
///
/// - [IPageDataMediator]: データ取得(data_strategist)。結果の型はジェネリック
/// - [IPageSettingsMediator]: 設定の保存と復元(settings_keeper)
/// - [IPageSessionMediator]: セッション確認(認証・メンテナンス)。テストでは何もしない既定の実装
/// - [PageMediatorMixin] / [PageMediatorRef]: ページ(`ConsumerState` / `WidgetRef`)から使う拡張
/// - [pageDataMediatorProvider] / [pageSettingsMediatorProvider] / [pageSessionMediatorProvider]: 実体の差し込み口
library;

export 'src/page_data_mediator.dart';
export 'src/page_mediator_extension.dart';
export 'src/page_mediator_providers.dart';
export 'src/page_session_mediator.dart';
export 'src/page_settings_mediator.dart';
