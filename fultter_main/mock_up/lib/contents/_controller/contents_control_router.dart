import 'package:mock_up/contents/contents.dart';

import '../../imports.dart';

import '../_notice/route/contents_error_router.dart';
import '../actual/route/actual_branch.dart';
import '../actual/route/register_actual_production_router.dart';
import '../actual/route/register_material_transfer_router.dart';
import '../actual/route/register_purchase_recive_router.dart';
import '../actual/route/register_shipping_router.dart';
import '../actual/route/stock_state_router.dart';
import '../authorization/route/login_router.dart';
import '../authorization/route/logout_router.dart';
import '../corporation/company/route/edit_company_router.dart';
import '../corporation/company/route/info_company_router.dart';
import '../corporation/departments/route/tree_department_router.dart';
import '../corporation/office/route/edit_office_router.dart';
import '../corporation/office/route/list_office_router.dart';
import '../corporation/route/corporation_branch.dart';
import '../corporation/staffs/route/lsit_staff_router.dart';
import '../equipments/route/equipment_branch.dart';
import '../equipments/route/list_category_equipment_router.dart';
import '../equipments/route/list_equipment_router.dart';
import '../items/route/item_branch.dart';
import '../items/route/list_category_item_router.dart';
import '../items/route/list_item_router.dart';
import '../items/route/tree_item_router.dart';
import '../purchasing/route/list_purchase_order_router.dart';
import '../purchasing/route/list_supplier_router.dart';
import '../purchasing/route/purchase_branch.dart';
import '../sales/route/list_customer_router.dart';
import '../sales/route/list_order_router.dart';
import '../sales/route/sales_branch.dart';
import '../settings/route/app_setting_router.dart';
import '../settings/route/user_setting_router.dart';
import '../shipping/route/lits_shipping_router.dart';
import '../shipping/route/shipping_branch.dart';
import 'controller.dart';

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
            TypedGoRoute<ListCategoryItemRouter>(
              path: ListCategoryItemRouterConstant.path,
              name: ListCategoryItemRouterConstant.name,
            ),
            TypedGoRoute<ListItemRouter>(
              path: ListItemRouterConstant.path,
              name: ListItemRouterConstant.name,
            ),
            TypedGoRoute<TreeItemRouter>(
              path: TreeItemRouterConstant.path,
              name: TreeItemRouterConstant.name,
            ),
          ],
        ),
        TypedStatefulShellBranch<EquipmentBranch>(
          routes: [
            TypedGoRoute<ListEquipmentRouter>(
              path: ListEquipmentConstant.path,
              name: ListEquipmentConstant.name,
            ),
            TypedGoRoute<ListCategoryEquipmentRouter>(
              path: ListCategoryEquipmentConstant.path,
              name: ListCategoryEquipmentConstant.name,
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
