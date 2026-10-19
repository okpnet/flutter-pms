// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records_purchase_recive_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$recordsPurchaseReciveRouter];

RouteBase get $recordsPurchaseReciveRouter => GoRouteData.$route(
  path: '/actual/purchase_recive/records',
  name: 'actual_purchase_recive',
  hasOverriddenOnExit: false,
  factory: $RecordsPurchaseReciveRouter._fromState,
);

mixin $RecordsPurchaseReciveRouter on GoRouteData {
  static RecordsPurchaseReciveRouter _fromState(GoRouterState state) =>
      RecordsPurchaseReciveRouter();

  @override
  String get location =>
      GoRouteData.$location('/actual/purchase_recive/records');

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
