// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_state_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$stockStateRouter];

RouteBase get $stockStateRouter => GoRouteData.$route(
  path: '/actual/stock_state',
  name: 'actual_stock_state',
  hasOverriddenOnExit: false,
  factory: $StockStateRouter._fromState,
);

mixin $StockStateRouter on GoRouteData {
  static StockStateRouter _fromState(GoRouterState state) =>
      const StockStateRouter();

  @override
  String get location => GoRouteData.$location('/actual/stock_state');

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
