import '../../imports.dart';

import '../_notice/notice.dart';
import '../actual/actual.dart';
import '../authorization/autorization.dart';
import '../corporation/corporation.dart';
import '../equipments/equipments.dart';
import '../items/items.dart';
import '../purchasing/purchasing.dart';
import '../sales/sales.dart';
import '../shipping/shipping.dart';
import '../settings/settings.dart';
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
