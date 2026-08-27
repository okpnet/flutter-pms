// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_task_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editTaskRouter];

RouteBase get $editTaskRouter => GoRouteData.$route(
  path: '/items/task',
  name: 'task',
  hasOverriddenOnExit: false,
  factory: $EditTaskRouter._fromState,
);

mixin $EditTaskRouter on GoRouteData {
  static EditTaskRouter _fromState(GoRouterState state) => EditTaskRouter();

  @override
  String get location => GoRouteData.$location('/items/task');

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
