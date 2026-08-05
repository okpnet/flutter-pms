import 'dart:async';

import '../../../contents/_models/maintenance/maintenance_status.dart';
import '../../../imports.dart';
import 'mock_maintenance_api.dart';

part 'mock_maintenance_provider.g.dart';

///メンテナンスモード問い合わせモック
@Riverpod(keepAlive: true)
class MockMaintenanceProvider extends _$MockMaintenanceProvider {
  Timer? _timer;

  @override
  MaintenanceStatus build() {
    // 初期値
    _startPolling();
    return MaintenanceStatus();
  }

  void _startPolling() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 10), (_) async {
      final api = MockMaintenanceApi(); //MaintenanceApi(http.Client());
      final status = await api.fetchStatus();
      state = status;
    });
  }

  void dispose() {
    _timer?.cancel();
  }
}
