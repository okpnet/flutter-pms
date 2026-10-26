import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pms_app/contents/_controller/contents_controller.dart';
import 'package:pms_app/contents/_controller/contents_frame_router.dart';
import 'package:pms_app/contents/contents.dart';

part 'contents_control_router.g.dart';

final shellNavigatorKey = GlobalKey<NavigatorState>();

///会社・品目・資源・営業・購買・生産実績・検品などのページは、機能(ライブラリ)のページを使う
///(`services/router/root_router.dart`で追加する)。ここには、ライブラリに画面が無いものだけを残す。
@TypedShellRoute<ContentsControlRouter>(
  routes: [
    ///入れ子へフレームを適用する
    TypedStatefulShellRoute<ContentsFrameRouter>(
      branches: [
        ///実績ブランチ
        TypedStatefulShellBranch<ActualBranch>(
          routes: [
            ///資材提供ページ
            TypedGoRoute<RegisterMaterialTransferRouter>(
              path: RegisterMaterialTransferConstant.path,
              name: RegisterMaterialTransferConstant.name,
            ),

            ///出荷梱包ページ
            TypedGoRoute<RegisterShippingRouter>(
              path: RegisterShippingConstant.path,
              name: RegisterShippingConstant.name,
            ),

            ///在庫状態ページ
            TypedGoRoute<StockStateRouter>(
              path: StockStateConstant.path,
              name: StockStateConstant.name,
            ),
          ],
        ),

        ///出荷ブランチ
        TypedStatefulShellBranch<ShippingBranch>(
          routes: [
            ///出荷管理閲覧ページ
            TypedGoRoute<LitsShippingRouter>(
              path: LitsShippingConstant.path,
              name: LitsShippingConstant.name,
            ),
          ],
        ),
      ],
    ),

    ///ログインページ
    TypedGoRoute<LoginRouter>(
      path: LoginConstant.path,
      name: LoginConstant.name,
    ),

    ///ダッシュボード・メンテナンス・アプリ設定・個人設定・ログアウト・エラーは、ライブラリのページを使う
    ///(app_core・maintenance。`services/router/root_router.dart`で追加する)
  ],
)
class ContentsControlRouter extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;
  const ContentsControlRouter();
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return ContentsController(navigator: navigator);
  }
}
