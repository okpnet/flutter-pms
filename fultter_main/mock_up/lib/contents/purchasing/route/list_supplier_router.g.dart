// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_supplier_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listSupplierRouter];

RouteBase get $listSupplierRouter => GoRouteData.$route(
  path: '/purchasing/supplier',
  name: 'supplier',
  hasOverriddenOnExit: false,
  factory: $ListSupplierRouter._fromState,
);

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
