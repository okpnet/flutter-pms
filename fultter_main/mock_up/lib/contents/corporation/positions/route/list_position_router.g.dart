// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_position_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listPositionRouter];

RouteBase get $listPositionRouter => GoRouteData.$route(
  path: '/corporation/position/list',
  name: 'position_list',
  hasOverriddenOnExit: false,
  factory: $ListPositionRouter._fromState,
);

mixin $ListPositionRouter on GoRouteData {
  static ListPositionRouter _fromState(GoRouterState state) =>
      ListPositionRouter();

  @override
  String get location => GoRouteData.$location('/corporation/position/list');

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
