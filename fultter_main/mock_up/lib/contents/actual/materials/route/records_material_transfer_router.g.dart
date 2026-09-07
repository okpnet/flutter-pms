// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records_material_transfer_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$recordsMaterialTransferRouter];

RouteBase get $recordsMaterialTransferRouter => GoRouteData.$route(
  path: '/actual/material_transfer/records',
  name: 'actual_material_transfer',
  hasOverriddenOnExit: false,
  factory: $RecordsMaterialTransferRouter._fromState,
);

mixin $RecordsMaterialTransferRouter on GoRouteData {
  static RecordsMaterialTransferRouter _fromState(GoRouterState state) =>
      RecordsMaterialTransferRouter();

  @override
  String get location =>
      GoRouteData.$location('/actual/material_transfer/records');

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
