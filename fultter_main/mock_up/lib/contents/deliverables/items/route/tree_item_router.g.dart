// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_item_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$treeItemRouter];

RouteBase get $treeItemRouter => GoRouteData.$route(
  path: '/deliverables/item/tree',
  name: 'tree_of_item',
  hasOverriddenOnExit: false,
  factory: $TreeItemRouter._fromState,
);

mixin $TreeItemRouter on GoRouteData {
  static TreeItemRouter _fromState(GoRouterState state) =>
      const TreeItemRouter();

  @override
  String get location => GoRouteData.$location('/deliverables/item/tree');

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
