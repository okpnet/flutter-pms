// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_office_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editOfficeRouter];

RouteBase get $editOfficeRouter => GoRouteData.$route(
  path: '/corporation/office/edit',
  name: 'office_edit',
  hasOverriddenOnExit: false,
  factory: $EditOfficeRouter._fromState,
);

mixin $EditOfficeRouter on GoRouteData {
  static EditOfficeRouter _fromState(GoRouterState state) =>
      const EditOfficeRouter();

  @override
  String get location => GoRouteData.$location('/corporation/office/edit');

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
