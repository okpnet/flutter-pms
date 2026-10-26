// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_order_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listOrderRouter];

RouteBase get $listOrderRouter => GoRouteData.$route(
  path: '/sales/order',
  name: 'order',
  hasOverriddenOnExit: false,
  factory: $ListOrderRouter._fromState,
);

mixin $ListOrderRouter on GoRouteData {
  static ListOrderRouter _fromState(GoRouterState state) =>
      const ListOrderRouter();

  @override
  String get location => GoRouteData.$location('/sales/order');

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
