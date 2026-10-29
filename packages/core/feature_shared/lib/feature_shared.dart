/// 機能パッケージとアプリの間で共有する、最小限の口。
///
/// - [commandBusProvider]: 機能はここから CommandBus を受け取る(実体はアプリが override)
/// - [FeatureModule]: 機能がアプリへ「ルート・遷移先の変換・ハンドラ」を提供する型
/// - [localeProvider]: アプリが使う言語(多言語の文字列を選ぶため)
/// - [MenuEntry] / [MenuContributor]: トップメニューの項目(機能が提供し、アプリが集める)
/// - [userSummaryProvider]: ログインユーザーの表示用の情報(AppCore が提供)
/// - [busyProvider] / [BusyScope]: 長時間の処理中の状態と、画面全体を覆う部品(処理中は操作と戻る操作を無効にする)
/// - [GoRouterDestinationNavigator]: 遷移先を GoRouter で実行する(アプリと example が共用)
/// - [EntityFeatureModule]: 実体の定義から台帳・編集の画面を提供する機能の土台
/// - [FeatureHost]: 機能を単体で確認する最小のアプリ(example 用)
library;

export 'package:baton_lib/baton_lib.dart';

export 'src/busy.dart';

export 'src/command_bus_provider.dart';
export 'src/entity_feature_module.dart';
export 'src/feature_host.dart';
export 'src/feature_module.dart';
export 'src/go_router_destination_navigator.dart';
export 'src/locale_provider.dart';
export 'src/menu.dart';
export 'src/ui_settings.dart';
