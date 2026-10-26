import '../page/maintenance_paths.dart';
import 'maintenance_status.dart';

/// ルーターの `redirect` に使う判定。
///
/// - メンテナンス中は、メンテナンスページ以外のどのページへ行こうとしても、メンテナンスページへ向ける
///   (メンテナンスページからほかのページへは移れない)。
/// - メンテナンスが終わっているのにメンテナンスページにいるときは、[home] へ戻す。
/// - それ以外は null(そのまま)。
String? maintenanceRedirect({
  required MaintenanceStatus status,
  required String location,
  String home = '/',
}) {
  final onMaintenancePage =
      Uri.parse(location).path == MaintenancePaths.maintenance;
  if (status.isUnderMaintenance) {
    return onMaintenancePage ? null : MaintenancePaths.maintenance;
  }
  return onMaintenancePage ? home : null;
}
