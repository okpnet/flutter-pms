// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_shipping_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$registerShippingRouter];

RouteBase get $registerShippingRouter => GoRouteData.$route(
  path: '/actual/shipping',
  name: 'actual_shipping',
  hasOverriddenOnExit: false,
  factory: $RegisterShippingRouter._fromState,
);

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
