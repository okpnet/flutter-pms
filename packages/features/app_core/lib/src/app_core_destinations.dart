import 'package:baton_lib/baton_lib.dart';

/// ブート画面へ(読み込み中の表示)。
final class BootDestination extends PageDestination<void> {
  const BootDestination();
}

/// ダッシュボードへ。件数のコンテナ(`dashboard_container`)を置く。
final class DashboardDestination extends PageDestination<void> {
  const DashboardDestination();
}

/// 設定へ。
final class SettingsDestination extends PageDestination<void> {
  const SettingsDestination();
}

/// 権限の無いページを開こうとしたときの画面へ(アクセス拒否の画像と、トップへ戻るボタンだけを持つ)。
final class AccessDeniedDestination extends PageDestination<void> {
  const AccessDeniedDestination();
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
  BootDestination(),
  DashboardDestination(),
  SettingsDestination(),
  AccessDeniedDestination(),
  ErrorDestination(),
  ErrorDestination(message: 'sample'),
];
