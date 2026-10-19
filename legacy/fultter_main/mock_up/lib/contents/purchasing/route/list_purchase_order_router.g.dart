// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_purchase_order_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listPurchaseOrderRouter];

RouteBase get $listPurchaseOrderRouter => GoRouteData.$route(
  path: '/purchasing/order',
  name: 'purchase_order',
  hasOverriddenOnExit: false,
  factory: $ListPurchaseOrderRouter._fromState,
);

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
