// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_supplier_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editSupplierRouter];

RouteBase get $editSupplierRouter => GoRouteData.$route(
  path: '/purchasing/order',
  name: 'purchase_order',
  hasOverriddenOnExit: false,
  factory: $EditSupplierRouter._fromState,
);

mixin $EditSupplierRouter on GoRouteData {
  static EditSupplierRouter _fromState(GoRouterState state) =>
      EditSupplierRouter();

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
