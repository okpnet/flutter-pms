import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/_controller/contents_controller.dart';
import 'package:mock_up/contents/_controller/contents_frame_router.dart';
import 'package:mock_up/contents/actual/production/route/records_production_achievement_router.dart';
import 'package:mock_up/contents/actual/production/route/register_actual_production_router.dart';
import 'package:mock_up/contents/contents.dart';
import 'package:mock_up/contents/corporation/staffs/route/edit_staff_router.dart';
import 'package:mock_up/contents/org_resources/locations/route/edit_location_router.dart';
import 'package:mock_up/contents/org_resources/locations/route/tree_location_router.dart';
import 'package:mock_up/contents/org_resources/route/org_resource_branch.dart';
import 'package:mock_up/contents/settings/route/app_setting_router.dart';
import 'package:mock_up/contents/settings/route/user_setting_router.dart';

part 'contents_control_router.g.dart';

final shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<ContentsControlRouter>(
  routes: [
    ///入れ子へフレームを適用する
    TypedStatefulShellRoute<ContentsFrameRouter>(
      branches: [
        ///ブランチ
        TypedStatefulShellBranch<CorporationBranch>(
          routes: [
            ///会社閲覧ページ
            TypedGoRoute<InfoCompanyRouter>(
              path: InfoCompanyConstant.path,
              name: InfoCompanyConstant.name,
              routes: [
                ///会社編集ページ
                TypedGoRoute<EditCompanyRouter>(
                  name: EditComapnyConstant.name,
                  path: EditComapnyConstant.path,
                ),
              ],
            ),

            ///部署閲覧ページ
            TypedGoRoute<TreeDepartmentRouter>(
              path: TreeDepartmentConstant.path,
              name: TreeDepartmentConstant.name,
              routes: [
                ///部署編集ページ
                TypedGoRoute<EditDepartmentRouter>(
                  path: EditDepartmentConstant.path,
                  name: EditDepartmentConstant.name,
                ),
              ],
            ),

            ///事業所閲覧ページ
            TypedGoRoute<ListOfficeRouter>(
              path: ListOfficeConstant.path,
              name: ListOfficeConstant.name,
              routes: [
                ///事業所編集ページ
                TypedGoRoute<EditOfficeRouter>(
                  path: EditOfficeConstant.path,
                  name: EditOfficeConstant.name,
                ),
              ],
            ),

            ///スタッフ閲覧ページ
            TypedGoRoute<LsitStaffRouter>(
              path: ListStaffConstant.path,
              name: ListStaffConstant.name,
              routes: [
                ///スタッフ編集ページ
                TypedGoRoute<EditStaffRouter>(
                  path: EditStaffConstant.path,
                  name: EditStaffConstant.name,
                ),
              ],
            ),
          ],
        ),

        ///実績ブランチ
        TypedStatefulShellBranch<ActualBranch>(
          routes: [
            ///生産実績登録ページ
            TypedGoRoute<RegisterActualProductionRouter>(
              path: RegisterActualProductionConstant.path,
              name: RegisterActualProductionConstant.name,
            ),

            ///生産実績管理ページ
            TypedGoRoute<RecordsProductionAchievementRouter>(
              path: RecordsProductionAchievementConstant.path,
              name: RecordsProductionAchievementConstant.name,
            ),

            ///資材提供ページ
            TypedGoRoute<RegisterMaterialTransferRouter>(
              path: RegisterMaterialTransferConstant.path,
              name: RegisterMaterialTransferConstant.name,
            ),

            ///検品ページ
            TypedGoRoute<RegisterPurchaseReciveRouter>(
              path: RegisterPurchaseReciveConstant.path,
              name: RegisterPurchaseReciveConstant.name,
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

        ///品目ブランチ
        TypedStatefulShellBranch<ItemBranch>(
          routes: [
            ///品目大きさ区分管理ページ
            TypedGoRoute<ListItemSizeKindRouter>(
              path: ListItemSizeKindRouterConstant.path,
              name: ListItemSizeKindRouterConstant.name,
              routes: [
                ///品目大きさ区分編集ページ
                TypedGoRoute<EditItemSizeKindRouter>(
                  path: EditItemSizeKindRouterConstant.path,
                  name: EditItemSizeKindRouterConstant.name,
                ),
              ],
            ),

            ///品目区分閲覧ページ
            TypedGoRoute<ListItemKindRouter>(
              path: ListItemKindRouterConstant.path,
              name: ListItemKindRouterConstant.name,
              routes: [
                ///品目区分編集ページ
                TypedGoRoute<EditItemKindRouter>(
                  path: EditItemKindRouterConstant.path,
                  name: EditItemKindRouterConstant.name,
                ),
              ],
            ),

            ///品目閲覧ページ
            TypedGoRoute<ListItemRouter>(
              path: ListItemRouterConstant.path,
              name: ListItemRouterConstant.name,
              routes: [
                ///品目編集ページ
                TypedGoRoute<EditItemRouter>(
                  path: EditItemRouterConstant.path,
                  name: EditItemRouterConstant.name,
                ),
              ],
            ),

            ///品目構成閲覧ページ
            TypedGoRoute<TreeItemRouter>(
              path: TreeItemRouterConstant.path,
              name: TreeItemRouterConstant.name,
              routes: [
                ///品目編集ページ
                TypedGoRoute<EditItemRouter>(
                  path: EditItemRouterConstant.path,
                  name: EditItemRouterConstant.name,
                ),
              ],
            ),
          ],
        ),

        ///資源ブランチ
        TypedStatefulShellBranch<OrgResourceBranch>(
          routes: [
            ///設備閲覧ページ
            TypedGoRoute<ListEquipmentRouter>(
              path: ListEquipmentConstant.path,
              name: ListEquipmentConstant.name,
              routes: [
                ///設備編集ページ
                TypedGoRoute<EditEquipmentRouter>(
                  path: EditEquipmentConstant.path,
                  name: EditEquipmentConstant.name,
                ),
              ],
            ),

            ///設備分類閲覧ページ
            TypedGoRoute<ListEquipmentKindRouter>(
              path: ListEquipmentKindConstant.path,
              name: ListEquipmentKindConstant.name,

              ///設備分類編集ページ
              routes: [
                TypedGoRoute<EditEquipmentKindRouter>(
                  path: EditEquipmentKindConstant.path,
                  name: EditEquipmentConstant.name,
                ),
              ],
            ),

            ///場所・エリア閲覧ページ
            TypedGoRoute<TreeLocationRouter>(
              path: TreeLocationConstant.path,
              name: TreeLocationConstant.name,
              routes: [
                ///場所・エリア編集ページ
                TypedGoRoute<EditLocationRouter>(
                  path: EditLocationConstant.path,
                  name: EditLocationConstant.name,
                ),
              ],
            ),
          ],
        ),

        ///購買ブランチ
        TypedStatefulShellBranch<PurchaseBranch>(
          routes: [
            ///サプライヤー閲覧ぺーじ
            TypedGoRoute<ListSupplierRouter>(
              path: ListSupplierConstant.path,
              name: ListSupplierConstant.name,

              routes: [
                ///Tサプライヤー編集ページ
                TypedGoRoute<EditSupplierRouter>(
                  path: EditSupplierConstant.path,
                  name: EditSupplierConstant.name,
                ),
              ],
            ),

            ///注文書閲覧ページ
            TypedGoRoute<ListPurchaseOrderRouter>(
              path: ListPurchaseOrderConstant.path,
              name: ListPurchaseOrderConstant.name,

              ///注文書ページ
              routes: [
                TypedGoRoute<EditPurchaseOrderRouter>(
                  path: EditPurchaseOrderConstant.path,
                  name: EditPurchaseOrderConstant.name,
                ),
              ],
            ),
          ],
        ),

        ///顧客ブランチ
        TypedStatefulShellBranch<SalesBranch>(
          routes: [
            ///顧客閲覧ページ
            TypedGoRoute<ListCustomerRouter>(
              path: ListCustomerConstant.path,
              name: ListCustomerConstant.name,
              routes: [
                ///顧客編集ページ
                TypedGoRoute<EditCustomerRouter>(
                  path: EditCustomerConstant.path,
                  name: EditCustomerConstant.name,
                ),
              ],
            ),

            ///受注閲覧ページ
            TypedGoRoute<ListOrderRouter>(
              path: ListOrderConstant.path,
              name: ListOrderConstant.name,

              routes: [
                ///受注受付ページ
                TypedGoRoute<EditOrderRouter>(
                  path: EditOrderConstant.path,
                  name: EditOrderConstant.name,
                ),
              ],
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

              ///TODO:出荷実績ページ
              ///TODO:出荷指示ページ:
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

    ///ログアウトページ
    TypedGoRoute<LogoutRouter>(
      path: LogoutConstant.path,
      name: LogoutConstant.name,
    ),

    ///ダッシュボードページ
    TypedGoRoute<DashboardRouter>(
      path: DashboardConstant.path,
      name: DashboardConstant.name,
    ),

    ///アプリケーション設定ページ
    TypedGoRoute<AppSettingRouter>(
      path: AppSettingConstant.path,
      name: AppSettingConstant.name,
    ),

    ///故人設定ページ
    TypedGoRoute<UserSettingRouter>(
      path: UserSettingConstant.path,
      name: UserSettingConstant.name,
    ),

    ///エラーページ
    TypedGoRoute<ContentsErrorRouter>(
      path: ContentsErrorConstant.path,
      name: ContentsErrorConstant.name,
    ),
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
