// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_actual_production_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$registerActualProductionRouter];

RouteBase get $registerActualProductionRouter => GoRouteData.$route(
  path: '/actual/product',
  name: 'actual_product',
  hasOverriddenOnExit: false,
  factory: $RegisterActualProductionRouter._fromState,
);

mixin $RegisterActualProductionRouter on GoRouteData {
  static RegisterActualProductionRouter _fromState(GoRouterState state) =>
      const RegisterActualProductionRouter();

  @override
  String get location => GoRouteData.$location('/actual/product');

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
