import 'package:baton_lib/baton_lib.dart';

/// メンテナンスページへ。ほかのページへは、このページからリンクしない。
final class MaintenanceDestination extends PageDestination<void> {
  const MaintenanceDestination();
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> maintenanceDestinationSamples = [
  MaintenanceDestination(),
];
