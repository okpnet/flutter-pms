// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_location_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$treeLocationRouter];

RouteBase get $treeLocationRouter => GoRouteData.$route(
  path: '/orgresources/location',
  name: 'location',
  hasOverriddenOnExit: false,
  factory: $TreeLocationRouter._fromState,
);

mixin $TreeLocationRouter on GoRouteData {
  static TreeLocationRouter _fromState(GoRouterState state) =>
      const TreeLocationRouter();

  @override
  String get location => GoRouteData.$location('/orgresources/location');

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
