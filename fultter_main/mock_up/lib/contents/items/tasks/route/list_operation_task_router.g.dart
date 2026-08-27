// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_operation_task_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listOperationTaskRouter];

RouteBase get $listOperationTaskRouter => GoRouteData.$route(
  path: '/items/operation/edit',
  name: 'operation_task_edit',
  hasOverriddenOnExit: false,
  factory: $ListOperationTaskRouter._fromState,
);

mixin $ListOperationTaskRouter on GoRouteData {
  static ListOperationTaskRouter _fromState(GoRouterState state) =>
      const ListOperationTaskRouter();

  @override
  String get location => GoRouteData.$location('/items/operation/edit');

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
