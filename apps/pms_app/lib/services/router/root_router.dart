// Project imports:
import 'package:auth_files/auth_files.dart' show AuthFilesPaths;
import 'package:backstage/backstage.dart' show BackstagePaths;
import 'package:maintenance/maintenance.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:pms_app/contents/_models/error/app_error.dart';

import '../../contents/contents.dart';
import '../../imports.dart';
import '../features/feature_error.dart';
import '../features/feature_modules.dart';
import 'router.dart';

part 'root_router.g.dart';

///GoRouterのメイン。ページはすべて機能(ライブラリ)のルート(`featureModules`・`standaloneFeatureModules`)で、アプリには持たない
@Riverpod(keepAlive: true)
GoRouter rootRouter(Ref ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    // 最初の画面は auth_files のログイン
    initialLocation: AuthFilesPaths.login,
    routes: [
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
      var session = PageSessionStatus.unknown;
      if (state.uri.path != MaintenancePaths.maintenance) {
        session = await ref.read(pageSessionMediatorProvider).refresh();
      }
      final maintenance = maintenanceRedirect(
        status: ref.read(maintenanceStatusProvider),
        location: state.uri.toString(),
        home: DashboardConstant.path,
      );
      if (maintenance != null) return maintenance;
      // ログインしていなければ(ログイン前の画面を除いて)ログインへ向ける。
      // 接続先が未設定のときも同じ(開発用の例外はない。ログイン画面から裏設定の入口を通って接続先を設定する)
      return authRedirect(
        status: session,
        location: state.uri.toString(),
        loginPath: AuthFilesPaths.login,
        // セッションが切れたときは、切れたことを案内するページ(ログインへの遷移を促す)
        expiredPath: AuthFilesPaths.logoutWith(sessionExpired: true),
        openPaths: const [
          AuthFilesPaths.login,
          AuthFilesPaths.register,
          AuthFilesPaths.forgot,
          // ログアウトの完了(ログインしていない状態で表示する)
          AuthFilesPaths.logout,
          MaintenancePaths.maintenance,
          BackstagePaths.backstage,
        ],
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
