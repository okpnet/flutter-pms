// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listItemRouter];

RouteBase get $listItemRouter => GoRouteData.$route(
  path: '/items/list',
  name: 'list_of_item',
  hasOverriddenOnExit: false,
  factory: $ListItemRouter._fromState,
);

mixin $ListItemRouter on GoRouteData {
  static ListItemRouter _fromState(GoRouterState state) =>
      const ListItemRouter();

  @override
  String get location => GoRouteData.$location('/items/list');

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
