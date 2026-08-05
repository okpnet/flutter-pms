import 'package:mock_up/contents/_notice/route/notice_extenssion.dart';
import 'package:mock_up/contents/_notice/route/router.dart';
import 'package:mock_up/contents/contents.dart';
import 'package:mock_up/services/core/core.dart';

import '../../../imports.dart';
import '../../authorization/authorization.dart';
import '../../router/router.dart';

part 'mock_core_serveice.g.dart';

///主サービス
///立ち上げるときに1度呼びだし、インスタンス化する。
///終了時に明示的には記するサービスを追加する。
@Riverpod(keepAlive: true)
Future<void> mockCoreService(Ref ref) async {
  final reflesh = ref.watch(refreshListenableProvider);
  reflesh.addListener(() {
    //ページの変更通知
    //ここにページ切り替えを入れてはいけない
  });

  ///メンテナンス中
  final maintenance = ref.watch(mockMaintenanceProviderProvider.notifier);
  ref.listen(mockMaintenanceProviderProvider, (prev, next) {
    if (!next.isMaintenance) {
      return;
    }
    final router = ref.read(rootRouterProvider);
    router.toNotice(MaintenanceConstant.path, next);
  });

  ///認証状態
  ref.listen(mockAutorizeServiceProvider, (prev, next) {
    final router = ref.read(rootRouterProvider);

    switch (next) {
      case AuthStateType.expired:
        router.push(LoginConstant.path);
        break;
      case AuthStateType.fail:
        router.go(ContentsErrorConstant.path);
        break;
      case AuthStateType.authenticated:
        if (router.canPop()) {
          router.pop();
        } else {
          router.go(DashboardConstant.path);
        }
        break;
      case AuthStateType.signedOut:
        router.go(LoginConstant.path);
        break;
    }
  });
  ref.onDispose(() {
    reflesh.dispose();
    maintenance.dispose();
  });
}
