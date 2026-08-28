// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_task_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$treeTaskRouter];

RouteBase get $treeTaskRouter => GoRouteData.$route(
  path: '/items/tasks/tree',
  name: 'task_tree',
  hasOverriddenOnExit: false,
  factory: $TreeTaskRouter._fromState,
);

mixin $TreeTaskRouter on GoRouteData {
  static TreeTaskRouter _fromState(GoRouterState state) =>
      const TreeTaskRouter();

  @override
  String get location => GoRouteData.$location('/items/tasks/tree');

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
