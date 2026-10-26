// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_location_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editLocationRouter];

RouteBase get $editLocationRouter => GoRouteData.$route(
  path: '/orgresources/location/edit',
  name: 'location_edit',
  hasOverriddenOnExit: false,
  factory: $EditLocationRouter._fromState,
);

mixin $EditLocationRouter on GoRouteData {
  static EditLocationRouter _fromState(GoRouterState state) =>
      const EditLocationRouter();

  @override
  String get location => GoRouteData.$location('/orgresources/location/edit');

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
