// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lits_shipping_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$litsShippingRouter];

RouteBase get $litsShippingRouter => GoRouteData.$route(
  path: '/shipping/order',
  name: 'shipping',
  hasOverriddenOnExit: false,
  factory: $LitsShippingRouter._fromState,
);

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
