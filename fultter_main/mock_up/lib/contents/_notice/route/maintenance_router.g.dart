// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$maintenanceRouter];

RouteBase get $maintenanceRouter => GoRouteData.$route(
  path: '/notice/maintenance',
  name: 'maintenace',
  hasOverriddenOnExit: false,
  factory: $MaintenanceRouter._fromState,
);

mixin $MaintenanceRouter on GoRouteData {
  static MaintenanceRouter _fromState(GoRouterState state) =>
      const MaintenanceRouter();

  @override
  String get location => GoRouteData.$location('/notice/maintenance');

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
