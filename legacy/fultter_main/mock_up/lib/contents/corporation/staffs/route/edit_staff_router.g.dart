// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_staff_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editStaffRouter];

RouteBase get $editStaffRouter => GoRouteData.$route(
  path: '/corporation/edit_company',
  name: 'staff_edit',
  hasOverriddenOnExit: false,
  factory: $EditStaffRouter._fromState,
);

mixin $EditStaffRouter on GoRouteData {
  static EditStaffRouter _fromState(GoRouterState state) => EditStaffRouter();

  @override
  String get location => GoRouteData.$location('/corporation/edit_company');

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
