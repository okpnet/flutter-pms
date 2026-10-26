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
              path: '/actual/material_transfer/register',
              name: 'actual_material_transfer',
              hasOverriddenOnExit: false,
              factory: $RegisterMaterialTransferRouter._fromState,
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
              path: '/shipping/order',
              name: 'shipping',
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
      path: '/dashboard',
      name: 'dashboard',
      hasOverriddenOnExit: false,
      factory: $DashboardRouter._fromState,
    ),
    GoRouteData.$route(
      path: '/notice/maintenance',
      name: 'maintenace',
      hasOverriddenOnExit: false,
      factory: $MaintenanceRouter._fromState,
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

mixin $RegisterMaterialTransferRouter on GoRouteData {
  static RegisterMaterialTransferRouter _fromState(GoRouterState state) =>
      const RegisterMaterialTransferRouter();

  @override
  String get location =>
      GoRouteData.$location('/actual/material_transfer/register');

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

mixin $LitsShippingRouter on GoRouteData {
  static LitsShippingRouter _fromState(GoRouterState state) =>
      const LitsShippingRouter();

  @override
  String get location => GoRouteData.$location('/shipping/order');

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

mixin $DashboardRouter on GoRouteData {
  static DashboardRouter _fromState(GoRouterState state) =>
      const DashboardRouter();

  @override
  String get location => GoRouteData.$location('/dashboard');

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

mixin $MaintenanceRouter on GoRouteData {
  static MaintenanceRouter _fromState(GoRouterState state) =>
      const MaintenanceRouter();

  @override
  String get location => GoRouteData.$location('/notice/maintenance');

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
