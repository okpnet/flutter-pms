// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_office_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listOfficeRouter];

RouteBase get $listOfficeRouter => GoRouteData.$route(
  path: '/corporation/office',
  name: 'office',
  hasOverriddenOnExit: false,
  factory: $ListOfficeRouter._fromState,
);

mixin $ListOfficeRouter on GoRouteData {
  static ListOfficeRouter _fromState(GoRouterState state) =>
      const ListOfficeRouter();

  @override
  String get location => GoRouteData.$location('/corporation/office');

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
