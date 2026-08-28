import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/_controller/contents_controller.dart';
import 'package:mock_up/contents/_controller/contents_frame_router.dart';
import 'package:mock_up/contents/contents.dart';
import 'package:mock_up/contents/org_resources/locations/route/edit_location_router.dart';
import 'package:mock_up/contents/org_resources/locations/route/tree_location_router.dart';
import 'package:mock_up/contents/org_resources/route/org_resource_branch.dart';
import 'package:mock_up/contents/settings/route/app_setting_router.dart';
import 'package:mock_up/contents/settings/route/user_setting_router.dart';

part 'contents_control_router.g.dart';

final shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<ContentsControlRouter>(
  routes: [
    TypedStatefulShellRoute<ContentsFrameRouter>(
      branches: [
        TypedStatefulShellBranch<CorporationBranch>(
          routes: [
            TypedGoRoute<InfoCompanyRouter>(
              path: InfoCompanyConstant.path,
              name: InfoCompanyConstant.name,
              routes: [
                TypedGoRoute<EditCompanyRouter>(
                  name: EditComapnyConstant.name,
                  path: EditComapnyConstant.path,
                ),
              ],
            ),
            TypedGoRoute<TreeDepartmentRouter>(
              path: TreeDepartmentConstant.path,
              name: TreeDepartmentConstant.name,
            ),
            TypedGoRoute<ListOfficeRouter>(
              path: ListOfficeConstant.path,
              name: ListOfficeConstant.name,
              routes: [
                TypedGoRoute<EditOfficeRouter>(
                  path: EditOfficeConstant.path,
                  name: EditOfficeConstant.name,
                ),
              ],
            ),
            TypedGoRoute<LsitStaffRouter>(
              path: ListStaffConstant.path,
              name: ListStaffConstant.name,
            ),
          ],
        ),
        TypedStatefulShellBranch<ActualBranch>(
          routes: [
            TypedGoRoute<RegisterActualProductionRouter>(
              path: RegisterActualProductionConstant.path,
              name: RegisterActualProductionConstant.name,
            ),
            TypedGoRoute<RegisterMaterialTransferRouter>(
              path: RegisterMaterialTransferConstant.path,
              name: RegisterMaterialTransferConstant.name,
            ),
            TypedGoRoute<RegisterPurchaseReciveRouter>(
              path: RegisterPurchaseReciveConstant.path,
              name: RegisterPurchaseReciveConstant.name,
            ),
            TypedGoRoute<RegisterShippingRouter>(
              path: RegisterShippingConstant.path,
              name: RegisterShippingConstant.name,
            ),
            TypedGoRoute<StockStateRouter>(
              path: StockStateConstant.path,
              name: StockStateConstant.name,
            ),
          ],
        ),
        TypedStatefulShellBranch<ItemBranch>(
          routes: [
            TypedGoRoute<ListItemSizeKindRouter>(
              path: ListItemSizeKindRouterConstant.path,
              name: ListItemSizeKindRouterConstant.name,
              routes: [
                TypedGoRoute<EditItemSizeKindRouter>(
                  path: EditItemSizeKindRouterConstant.path,
                  name: EditItemSizeKindRouterConstant.name,
                ),
              ],
            ),
            TypedGoRoute<ListItemKindRouter>(
              path: ListItemKindRouterConstant.path,
              name: ListItemKindRouterConstant.name,
              routes: [
                TypedGoRoute<EditItemKindRouter>(
                  path: EditItemKindRouterConstant.path,
                  name: EditItemKindRouterConstant.name,
                ),
              ],
            ),
            TypedGoRoute<ListItemRouter>(
              path: ListItemRouterConstant.path,
              name: ListItemRouterConstant.name,
              routes: [
                TypedGoRoute<EditItemRouter>(
                  path: EditItemRouterConstant.path,
                  name: EditItemRouterConstant.name,
                ),
              ],
            ),
            TypedGoRoute<TreeItemRouter>(
              path: TreeItemRouterConstant.path,
              name: TreeItemRouterConstant.name,
              routes: [
                TypedGoRoute<EditItemRouter>(
                  path: EditItemRouterConstant.path,
                  name: EditItemRouterConstant.name,
                ),
              ],
            ),
          ],
        ),
        TypedStatefulShellBranch<OrgResourceBranch>(
          routes: [
            TypedGoRoute<ListEquipmentRouter>(
              path: ListEquipmentConstant.path,
              name: ListEquipmentConstant.name,
            ),
            TypedGoRoute<ListEquipmentKindRouter>(
              path: ListEquipmentKindConstant.path,
              name: ListEquipmentKindConstant.name,
            ),
            TypedGoRoute<TreeLocationRouter>(
              path: TreeLocationConstant.path,
              name: TreeLocationConstant.name,
              routes: [
                TypedGoRoute<EditLocationRouter>(
                  path: EditLocationConstant.path,
                  name: EditLocationConstant.name,
                ),
              ],
            ),
          ],
        ),
        TypedStatefulShellBranch<PurchaseBranch>(
          routes: [
            TypedGoRoute<ListSupplierRouter>(
              path: ListSupplierConstant.path,
              name: ListSupplierConstant.name,
            ),
            TypedGoRoute<ListPurchaseOrderRouter>(
              path: ListPurchaseOrderConstant.path,
              name: ListPurchaseOrderConstant.name,
            ),
          ],
        ),
        TypedStatefulShellBranch<SalesBranch>(
          routes: [
            TypedGoRoute<ListCustomerRouter>(
              path: ListCustomerConstant.path,
              name: ListCustomerConstant.name,
            ),
            TypedGoRoute<ListOrderRouter>(
              path: ListOrderConstant.path,
              name: ListOrderConstant.name,
            ),
          ],
        ),
        TypedStatefulShellBranch<ShippingBranch>(
          routes: [
            TypedGoRoute<LitsShippingRouter>(
              path: LitsShippingConstant.path,
              name: LitsShippingConstant.name,
            ),
          ],
        ),
      ],
    ),
    TypedGoRoute<LoginRouter>(
      path: LoginConstant.path,
      name: LoginConstant.name,
    ),
    TypedGoRoute<LogoutRouter>(
      path: LogoutConstant.path,
      name: LogoutConstant.name,
    ),
    TypedGoRoute<DashboardRouter>(
      path: DashboardConstant.path,
      name: DashboardConstant.name,
    ),
    TypedGoRoute<AppSettingRouter>(
      path: AppSettingConstant.path,
      name: AppSettingConstant.name,
    ),
    TypedGoRoute<UserSettingRouter>(
      path: UserSettingConstant.path,
      name: UserSettingConstant.name,
    ),
    TypedGoRoute<ContentsErrorRouter>(
      path: ContentsErrorConstant.path,
      name: ContentsErrorConstant.name,
    ),
    TypedGoRoute<DashboardRouter>(
      path: DashboardConstant.path,
      name: DashboardConstant.name,
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
