// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_mrp_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$buildMrpRouter];

RouteBase get $buildMrpRouter => GoRouteData.$route(
  path: '/product/run_mrp',
  name: 'run_mrp_to_build',
  hasOverriddenOnExit: false,
  factory: $BuildMrpRouter._fromState,
);

mixin $BuildMrpRouter on GoRouteData {
  static BuildMrpRouter _fromState(GoRouterState state) =>
      const BuildMrpRouter();

  @override
  String get location => GoRouteData.$location('/product/run_mrp');

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
