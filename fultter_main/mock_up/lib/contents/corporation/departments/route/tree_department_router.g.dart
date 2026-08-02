// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_department_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$treeDepartmentRouter];

RouteBase get $treeDepartmentRouter => GoRouteData.$route(
  path: '/corporation/department',
  name: 'department',
  hasOverriddenOnExit: false,
  factory: $TreeDepartmentRouter._fromState,
);

mixin $TreeDepartmentRouter on GoRouteData {
  static TreeDepartmentRouter _fromState(GoRouterState state) =>
      const TreeDepartmentRouter();

  @override
  String get location => GoRouteData.$location('/corporation/department');

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
