// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contents_control_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$contentsControlRouter];

RouteBase get $contentsControlRouter => ShellRouteData.$route(
  navigatorKey: ContentsControlRouter.$navigatorKey,
  factory: $ContentsControlRouterExtension._fromState,
  routes: [
    StatefulShellRouteData.$route(
      factory: $ContentsFrameRouterExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/corporation/info_cmpany',
              name: 'info_cmpany',
              hasOverriddenOnExit: false,
              factory: $InfoCompanyRouter._fromState,
              routes: [
                GoRouteData.$route(
                  path: '/corporation/edit_company',
                  name: 'edit_comapny',
                  hasOverriddenOnExit: false,
                  factory: $EditCompanyRouter._fromState,
                ),
              ],
            ),
            GoRouteData.$route(
              path: '/corporation/department',
              name: 'department',
              hasOverriddenOnExit: false,
              factory: $TreeDepartmentRouter._fromState,
            ),
            GoRouteData.$route(
              path: '/corporation/office',
              name: 'office',
              hasOverriddenOnExit: false,
              factory: $ListOfficeRouter._fromState,
              routes: [
                GoRouteData.$route(
                  path: '/corporation/office/edit',
                  name: 'office_edit',
                  hasOverriddenOnExit: false,
                  factory: $EditOfficeRouter._fromState,
                ),
              ],
            ),
            GoRouteData.$route(
              path: '/corporation/staff',
              name: 'staff',
              hasOverriddenOnExit: false,
              factory: $LsitStaffRouter._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/actual/product',
              name: 'actual_product',
              hasOverriddenOnExit: false,
              factory: $RegisterActualProductionRouter._fromState,
            ),
            GoRouteData.$route(
              path: '/actual/material_transfer',
              name: 'actual_material_transfer',
              hasOverriddenOnExit: false,
              factory: $RegisterMaterialTransferRouter._fromState,
            ),
            GoRouteData.$route(
              path: '/actual/purchase_recive',
              name: 'actual_purchase_recive',
              hasOverriddenOnExit: false,
              factory: $RegisterPurchaseReciveRouter._fromState,
            ),
            GoRouteData.$route(
              path: '/actual/shipping',
              name: 'actual_shipping',
              hasOverriddenOnExit: false,
              factory: $RegisterShippingRouter._fromState,
            ),
            GoRouteData.$route(
              path: '/actual/stock_state',
              name: 'actual_stock_state',
              hasOverriddenOnExit: false,
              factory: $StockStateRouter._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/items/category',
              name: 'category_of_item',
              hasOverriddenOnExit: false,
              factory: $ListCategoryItemRouter._fromState,
            ),
            GoRouteData.$route(
              path: '/items/list',
              name: 'list_of_item',
              hasOverriddenOnExit: false,
              factory: $ListItemRouter._fromState,
            ),
            GoRouteData.$route(
              path: '/items/tree',
              name: 'tree_of_item',
              hasOverriddenOnExit: false,
              factory: $TreeItemRouter._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/equipments/equipment',
              name: 'equipment',
              hasOverriddenOnExit: false,
              factory: $ListEquipmentRouter._fromState,
            ),
            GoRouteData.$route(
              path: '/equipments/category',
              name: 'category_of_equipment',
              hasOverriddenOnExit: false,
              factory: $ListCategoryEquipmentRouter._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/purchasing/supplier',
              name: 'supplier',
              hasOverriddenOnExit: false,
              factory: $ListSupplierRouter._fromState,
            ),
            GoRouteData.$route(
              path: '/purchasing/order',
              name: 'purchase_order',
              hasOverriddenOnExit: false,
              factory: $ListPurchaseOrderRouter._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/sales/customer',
              name: 'customer',
              hasOverriddenOnExit: false,
              factory: $ListCustomerRouter._fromState,
            ),
            GoRouteData.$route(
              path: '/sales/customer',
              name: 'customer',
              hasOverriddenOnExit: false,
              factory: $ListOrderRouter._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/purchasing/supplier',
              name: 'supplier',
              hasOverriddenOnExit: false,
              factory: $LitsShippingRouter._fromState,
            ),
          ],
        ),
      ],
    ),
    GoRouteData.$route(
      path: '/login',
      name: 'login',
      hasOverriddenOnExit: false,
      factory: $LoginRouter._fromState,
    ),
    GoRouteData.$route(
      path: '/logout',
      name: 'logout',
      hasOverriddenOnExit: false,
      factory: $LogoutRouter._fromState,
    ),
    GoRouteData.$route(
      path: '/setting/app',
      name: 'app_setting',
      hasOverriddenOnExit: false,
      factory: $AppSettingRouter._fromState,
    ),
    GoRouteData.$route(
      path: '/setting/user',
      name: 'user_setting',
      hasOverriddenOnExit: false,
      factory: $UserSettingRouter._fromState,
    ),
    GoRouteData.$route(
      path: '/error',
      name: 'error',
      hasOverriddenOnExit: false,
      factory: $ContentsErrorRouter._fromState,
    ),
  ],
);

extension $ContentsControlRouterExtension on ContentsControlRouter {
  static ContentsControlRouter _fromState(GoRouterState state) =>
      const ContentsControlRouter();
}

extension $ContentsFrameRouterExtension on ContentsFrameRouter {
  static ContentsFrameRouter _fromState(GoRouterState state) =>
      const ContentsFrameRouter();
}

mixin $InfoCompanyRouter on GoRouteData {
  static InfoCompanyRouter _fromState(GoRouterState state) =>
      const InfoCompanyRouter();

  @override
  String get location => GoRouteData.$location('/corporation/info_cmpany');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $EditCompanyRouter on GoRouteData {
  static EditCompanyRouter _fromState(GoRouterState state) =>
      const EditCompanyRouter();

  @override
  String get location => GoRouteData.$location('/corporation/edit_company');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $TreeDepartmentRouter on GoRouteData {
  static TreeDepartmentRouter _fromState(GoRouterState state) =>
      const TreeDepartmentRouter();

  @override
  String get location => GoRouteData.$location('/corporation/department');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ListOfficeRouter on GoRouteData {
  static ListOfficeRouter _fromState(GoRouterState state) =>
      const ListOfficeRouter();

  @override
  String get location => GoRouteData.$location('/corporation/office');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $EditOfficeRouter on GoRouteData {
  static EditOfficeRouter _fromState(GoRouterState state) =>
      const EditOfficeRouter();

  @override
  String get location => GoRouteData.$location('/corporation/office/edit');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $LsitStaffRouter on GoRouteData {
  static LsitStaffRouter _fromState(GoRouterState state) =>
      const LsitStaffRouter();

  @override
  String get location => GoRouteData.$location('/corporation/staff');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $RegisterActualProductionRouter on GoRouteData {
  static RegisterActualProductionRouter _fromState(GoRouterState state) =>
      const RegisterActualProductionRouter();

  @override
  String get location => GoRouteData.$location('/actual/product');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $RegisterMaterialTransferRouter on GoRouteData {
  static RegisterMaterialTransferRouter _fromState(GoRouterState state) =>
      const RegisterMaterialTransferRouter();

  @override
  String get location => GoRouteData.$location('/actual/material_transfer');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $RegisterPurchaseReciveRouter on GoRouteData {
  static RegisterPurchaseReciveRouter _fromState(GoRouterState state) =>
      const RegisterPurchaseReciveRouter();

  @override
  String get location => GoRouteData.$location('/actual/purchase_recive');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $RegisterShippingRouter on GoRouteData {
  static RegisterShippingRouter _fromState(GoRouterState state) =>
      const RegisterShippingRouter();

  @override
  String get location => GoRouteData.$location('/actual/shipping');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $StockStateRouter on GoRouteData {
  static StockStateRouter _fromState(GoRouterState state) =>
      const StockStateRouter();

  @override
  String get location => GoRouteData.$location('/actual/stock_state');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ListCategoryItemRouter on GoRouteData {
  static ListCategoryItemRouter _fromState(GoRouterState state) =>
      const ListCategoryItemRouter();

  @override
  String get location => GoRouteData.$location('/items/category');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ListItemRouter on GoRouteData {
  static ListItemRouter _fromState(GoRouterState state) =>
      const ListItemRouter();

  @override
  String get location => GoRouteData.$location('/items/list');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $TreeItemRouter on GoRouteData {
  static TreeItemRouter _fromState(GoRouterState state) =>
      const TreeItemRouter();

  @override
  String get location => GoRouteData.$location('/items/tree');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ListEquipmentRouter on GoRouteData {
  static ListEquipmentRouter _fromState(GoRouterState state) =>
      const ListEquipmentRouter();

  @override
  String get location => GoRouteData.$location('/equipments/equipment');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ListCategoryEquipmentRouter on GoRouteData {
  static ListCategoryEquipmentRouter _fromState(GoRouterState state) =>
      const ListCategoryEquipmentRouter();

  @override
  String get location => GoRouteData.$location('/equipments/category');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ListSupplierRouter on GoRouteData {
  static ListSupplierRouter _fromState(GoRouterState state) =>
      const ListSupplierRouter();

  @override
  String get location => GoRouteData.$location('/purchasing/supplier');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ListPurchaseOrderRouter on GoRouteData {
  static ListPurchaseOrderRouter _fromState(GoRouterState state) =>
      const ListPurchaseOrderRouter();

  @override
  String get location => GoRouteData.$location('/purchasing/order');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ListCustomerRouter on GoRouteData {
  static ListCustomerRouter _fromState(GoRouterState state) =>
      const ListCustomerRouter();

  @override
  String get location => GoRouteData.$location('/sales/customer');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ListOrderRouter on GoRouteData {
  static ListOrderRouter _fromState(GoRouterState state) =>
      const ListOrderRouter();

  @override
  String get location => GoRouteData.$location('/sales/customer');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $LitsShippingRouter on GoRouteData {
  static LitsShippingRouter _fromState(GoRouterState state) =>
      const LitsShippingRouter();

  @override
  String get location => GoRouteData.$location('/purchasing/supplier');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $LoginRouter on GoRouteData {
  static LoginRouter _fromState(GoRouterState state) => const LoginRouter();

  @override
  String get location => GoRouteData.$location('/login');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $LogoutRouter on GoRouteData {
  static LogoutRouter _fromState(GoRouterState state) => const LogoutRouter();

  @override
  String get location => GoRouteData.$location('/logout');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AppSettingRouter on GoRouteData {
  static AppSettingRouter _fromState(GoRouterState state) =>
      const AppSettingRouter();

  @override
  String get location => GoRouteData.$location('/setting/app');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $UserSettingRouter on GoRouteData {
  static UserSettingRouter _fromState(GoRouterState state) =>
      const UserSettingRouter();

  @override
  String get location => GoRouteData.$location('/setting/user');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ContentsErrorRouter on GoRouteData {
  static ContentsErrorRouter _fromState(GoRouterState state) =>
      const ContentsErrorRouter();

  @override
  String get location => GoRouteData.$location('/error');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
