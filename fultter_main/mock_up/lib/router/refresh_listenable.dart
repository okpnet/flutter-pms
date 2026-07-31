import 'dart:developer';

import 'package:mock_up/imports.dart';

part 'refresh_listenable.g.dart';

///ページ切り替え、再描画で呼び出させるサブスクライバ
@Riverpod(keepAlive: true)
Raw<ValueNotifier<int>> refreshListenable(Ref ref) {
  final notifier = ValueNotifier<int>(0);
  void notify() {
    Future.microtask(() {
      notifier.value++;
    });
  }

  // 各状態が変わったときに value を更新して通知をトリガー
  // final maintenanceInfoSub =
  //     ref.listen(isMaintenanceModeProvider, (_, __) => notify());

  ref.onDispose(() {
    notifier.dispose();
  });

  notifier.addListener(() {
    ref.notifyListeners();
    log('⭐️⭐️⭐️ notifier value ${notifier.value} ⭐️⭐️⭐️');
  });
  return notifier;
}
