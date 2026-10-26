// Dart imports:
import 'dart:developer';

// Project imports:
import 'package:maintenance/maintenance.dart';
import 'package:pms_app/imports.dart';

part 'refresh_listenable.g.dart';

///ページ切り替え、再描画で呼び出させるサブスクライバ
@Riverpod(keepAlive: true)
Raw<ValueNotifier<int>> refreshListenable(Ref ref) {
  final notifier = ValueNotifier<int>(0);

  // 各状態が変わったときに value を更新して通知をトリガー
  // メンテナンスの状態が変わったら、ルーターの redirect を評価し直す
  ref.listen(maintenanceStatusProvider, (_, _) => notifier.value++);

  ref.onDispose(() {
    notifier.dispose();
  });

  notifier.addListener(() {
    ref.notifyListeners();
    log('notifier value ${notifier.value} ');
  });
  return notifier;
}
