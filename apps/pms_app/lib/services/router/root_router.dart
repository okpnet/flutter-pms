// Project imports:
import 'package:maintenance/maintenance.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
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

      ///メンテナンス中のページ。アプリの枠(ShellRoute)の外に置く(サイドバー・リンクを持たない)
      for (final module in standaloneFeatureModules) ...module.routes,

      ///機能(ライブラリ)のページ。アプリの枠の中に入れる(ページ側は AppBar を持たない)
      ShellRoute(
        builder: (context, state, child) => UnControlContentsFrame(body: child),
        routes: [for (final module in featureModules) ...module.routes],
      ),
    ],
    refreshListenable: ref.read(refreshListenableProvider),

    ///ページの切り替え・更新のタイミングで、セッション(メンテナンス・認証)を更新して確認する。
    ///メンテナンス中は、どのページもメンテナンスページへ向ける(メンテナンスページでは通信しない。
    ///「再確認」で更新し、終わっていれば状態の変更でここが評価し直されてダッシュボードへ戻る)
    redirect: (context, state) async {
      if (state.uri.path != MaintenancePaths.maintenance) {
        await ref.read(pageSessionMediatorProvider).refresh();
      }
      return maintenanceRedirect(
        status: ref.read(maintenanceStatusProvider),
        location: state.uri.toString(),
        home: DashboardConstant.path,
      );
    },
    //存在しないパス・ルートの構築失敗は app_core のエラー画面へ
    onException: (context, state, router) => router.go(
      errorLocationOf(
        AppError(.routeNotFoundOrBUildRouterException, message: state.uri.path),
      ),
    ),
  );
}
