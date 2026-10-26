// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_order_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editOrderRouter];

RouteBase get $editOrderRouter => GoRouteData.$route(
  path: '/sales/orders/edit',
  name: 'order_edit',
  hasOverriddenOnExit: false,
  factory: $EditOrderRouter._fromState,
);

mixin $EditOrderRouter on GoRouteData {
  static EditOrderRouter _fromState(GoRouterState state) => EditOrderRouter();

  @override
  String get location => GoRouteData.$location('/sales/orders/edit');

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
