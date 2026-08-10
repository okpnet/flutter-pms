// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_department_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editDepartmentRouter];

RouteBase get $editDepartmentRouter => GoRouteData.$route(
  path: '/corporation/department/edit',
  name: 'edit_department',
  hasOverriddenOnExit: false,
  factory: $EditDepartmentRouter._fromState,
);

mixin $EditDepartmentRouter on GoRouteData {
  static EditDepartmentRouter _fromState(GoRouterState state) =>
      const EditDepartmentRouter();

  @override
  String get location => GoRouteData.$location('/corporation/department/edit');

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
