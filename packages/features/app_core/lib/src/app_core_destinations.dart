import 'package:baton_lib/baton_lib.dart';

/// ダッシュボードへ。件数のコンテナ(`dashboard_container`)を置く。
final class DashboardDestination extends PageDestination<void> {
  const DashboardDestination();
}

/// 設定へ。
final class SettingsDestination extends PageDestination<void> {
  const SettingsDestination();
}

/// ログアウト画面へ。
final class LogoutDestination extends PageDestination<void> {
  const LogoutDestination();
}

/// エラー画面へ。[message] はアプリケーションエラーの内容(省略可)。
final class ErrorDestination extends PageDestination<void> {
  const ErrorDestination({this.message});

  final String? message;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'message': message};
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> appCoreDestinationSamples = [
  DashboardDestination(),
  SettingsDestination(),
  LogoutDestination(),
  ErrorDestination(),
  ErrorDestination(message: 'sample'),
];
