import '../contents/contents.dart';
import '../imports.dart';
import 'router.dart';
import '../contents/_controller/contents_control_router.dart' as controller;
part 'root_router.g.dart';

///GoRouterのメイン
///[controller]は$appRoutesへのアクセスを提供するが、そのまま使用するとどのappRoutesを使用するかわからないため
///別名アクセスをしてコントローラーにアクセスしてappRoutesを使用する
@Riverpod(keepAlive: true)
GoRouter rootRouter(Ref ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: LoginConstant.path,
    routes: controller.$appRoutes,
    refreshListenable: ref.read(refreshListenableProvider),
    //redirect: (_, state) => ref.read(redirectControllerProvider).call(state),
    errorPageBuilder: (context, state) {
      return MaterialPage(child: ContentError());
    },
  );
}
