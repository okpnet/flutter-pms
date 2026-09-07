// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_material_transfer_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$registerMaterialTransferRouter];

RouteBase get $registerMaterialTransferRouter => GoRouteData.$route(
  path: '/actual/material_transfer',
  name: 'actual_material_transfer',
  hasOverriddenOnExit: false,
  factory: $RegisterMaterialTransferRouter._fromState,
);

mixin $RegisterMaterialTransferRouter on GoRouteData {
  static RegisterMaterialTransferRouter _fromState(GoRouterState state) =>
      const RegisterMaterialTransferRouter();

  @override
  String get location => GoRouteData.$location('/actual/material_transfer');

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
