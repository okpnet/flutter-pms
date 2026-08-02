// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_purchase_recive_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$registerPurchaseReciveRouter];

RouteBase get $registerPurchaseReciveRouter => GoRouteData.$route(
  path: '/actual/purchase_recive',
  name: 'actual_purchase_recive',
  hasOverriddenOnExit: false,
  factory: $RegisterPurchaseReciveRouter._fromState,
);

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
