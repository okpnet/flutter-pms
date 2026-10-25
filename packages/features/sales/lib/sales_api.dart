/// 営業機能の契約(遷移先・命令の型)。他の機能・アプリはこちらだけを読み込む。
/// 実装(画面・ハンドラ)は `sales.dart` 側にあり、ここからは参照しない。
library;

export 'src/customer/customer_commands.dart';
export 'src/customer/customer_destinations.dart';
