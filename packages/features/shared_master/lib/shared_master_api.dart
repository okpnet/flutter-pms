/// 共有マスタの契約(遷移先・命令の型)。他の機能・アプリはこちらだけを読み込む。
/// 実装(画面・ハンドラ)は `shared_master.dart` 側にあり、ここからは参照しない。
library;

export 'src/shipping_kind/shipping_kind_commands.dart';
export 'src/shipping_kind/shipping_kind_destinations.dart';
export 'src/stakeholder/stakeholder_destinations.dart';
