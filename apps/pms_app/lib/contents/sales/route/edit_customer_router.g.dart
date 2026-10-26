// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_customer_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editCustomerRouter];

RouteBase get $editCustomerRouter => GoRouteData.$route(
  path: '/sales/customers/edit',
  name: 'customer',
  hasOverriddenOnExit: false,
  factory: $EditCustomerRouter._fromState,
);

mixin $EditCustomerRouter on GoRouteData {
  static EditCustomerRouter _fromState(GoRouterState state) =>
      EditCustomerRouter();

  @override
  String get location => GoRouteData.$location('/sales/customers/edit');

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
