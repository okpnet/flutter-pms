// Project imports:
import 'package:pms_app/contents/_models/error/app_error.dart';

import '../../contents/_controller/contents_control_router.dart' as controller;
import '../../contents/contents.dart';
import '../../imports.dart';
import '../features/feature_error.dart';
import '../features/feature_modules.dart';
import 'router.dart';

part 'root_router.g.dart';

///GoRouterのメイン
///[controller]は$appRoutesへのアクセスを提供するが、そのまま使用するとどのappRoutesを使用するかわからないため
///別名アクセスをしてコントローラーにアクセスしてappRoutesを使用する
@Riverpod(keepAlive: true)
GoRouter rootRouter(Ref ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: LoginConstant.path,
    routes: [
      ...controller.$appRoutes,

      ///機能(ライブラリ)のページ。アプリの枠の中に入れる(ページ側は AppBar を持たない)
      ShellRoute(
        builder: (context, state, child) => UnControlContentsFrame(body: child),
        routes: [for (final module in featureModules) ...module.routes],
      ),
    ],
    refreshListenable: ref.read(refreshListenableProvider),
    //redirect: (_, state) => ref.read(redirectControllerProvider).call(state),
    //存在しないパス・ルートの構築失敗は app_core のエラー画面へ
    onException: (context, state, router) => router.go(
      errorLocationOf(
        AppError(
          .routeNotFoundOrBUildRouterException,
          message: state.uri.path,
        ),
      ),
    ),
  );
}
