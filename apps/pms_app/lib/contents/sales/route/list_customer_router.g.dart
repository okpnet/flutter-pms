// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_customer_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listCustomerRouter];

RouteBase get $listCustomerRouter => GoRouteData.$route(
  path: '/sales/customer',
  name: 'customer',
  hasOverriddenOnExit: false,
  factory: $ListCustomerRouter._fromState,
);

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
