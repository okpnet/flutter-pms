/// 機能パッケージとアプリの間で共有する、最小限の口。
///
/// - [commandBusProvider]: 機能はここから CommandBus を受け取る(実体はアプリが override)
/// - [FeatureModule]: 機能がアプリへ「ルート・遷移先の変換・ハンドラ」を提供する型
library;

export 'package:baton_lib/baton_lib.dart';

export 'src/command_bus_provider.dart';
export 'src/feature_module.dart';
