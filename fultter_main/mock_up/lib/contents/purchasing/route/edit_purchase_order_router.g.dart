// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_purchase_order_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editPurchaseOrderRouter];

RouteBase get $editPurchaseOrderRouter => GoRouteData.$route(
  path: '/purchasing/orders/edit',
  name: 'purchase_order_edt',
  hasOverriddenOnExit: false,
  factory: $EditPurchaseOrderRouter._fromState,
);

mixin $EditPurchaseOrderRouter on GoRouteData {
  static EditPurchaseOrderRouter _fromState(GoRouterState state) =>
      EditPurchaseOrderRouter();

  @override
  String get location => GoRouteData.$location('/purchasing/orders/edit');

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
