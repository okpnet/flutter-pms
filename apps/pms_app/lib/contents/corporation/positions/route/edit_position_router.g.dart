// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_position_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editPositionRouter];

RouteBase get $editPositionRouter => GoRouteData.$route(
  path: '/corporation/position/edit',
  name: 'position_edit',
  hasOverriddenOnExit: false,
  factory: $EditPositionRouter._fromState,
);

mixin $EditPositionRouter on GoRouteData {
  static EditPositionRouter _fromState(GoRouterState state) =>
      EditPositionRouter();

  @override
  String get location => GoRouteData.$location('/corporation/position/edit');

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
