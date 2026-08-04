import 'package:mock_up/contents/contents.dart';

import '../../imports.dart';
import '../authorization/authorization.dart';
import '../router/refresh_listenable.dart';
import '../router/router.dart';
import '../../constants/constants.dart';

part 'mock_core_serveice.g.dart';

///主サービス
///立ち上げるときに1度呼びだし、インスタンス化する。
///終了時に明示的には記するサービスを追加する。
@Riverpod(keepAlive: true)
Future<void> mockCoreService(Ref ref) async {
  final router = ref.watch(refreshListenableProvider);
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
    router.dispose();
  });
}
