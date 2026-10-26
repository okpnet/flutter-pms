import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'maintenance_checker.dart';
import 'maintenance_status.dart';

/// メンテナンスの確認の実体。既定は常に利用可能。アプリが HTTP・GraphQL の実装へ差し替える。
final maintenanceCheckerProvider = Provider<IMaintenanceChecker>(
  (ref) => const AlwaysAvailableMaintenanceChecker(),
);

/// いまのメンテナンスの状態。ページの切り替え・更新のタイミングで [MaintenanceStatusNotifier.refresh] を呼ぶ。
/// ルーターの `refreshListenable` と `redirect` に使うと、メンテナンス中は全ページがメンテナンスページになる。
final maintenanceStatusProvider =
    NotifierProvider<MaintenanceStatusNotifier, MaintenanceStatus>(
      MaintenanceStatusNotifier.new,
    );

class MaintenanceStatusNotifier extends Notifier<MaintenanceStatus> {
  @override
  MaintenanceStatus build() => MaintenanceStatus.available;

  /// サーバーへ確認して、状態を更新する。
  Future<MaintenanceStatus> refresh() async {
    final status = await ref.read(maintenanceCheckerProvider).check();
    // 同じ値なら更新しない(ルーターの再評価が続かないように)
    if (ref.mounted && state != status) state = status;
    return status;
  }

  /// 通常の通信の応答(HTTP 503 など)でメンテナンス中と分かったときに知らせる。
  void report(MaintenanceStatus status) {
    if (state != status) state = status;
  }
}
