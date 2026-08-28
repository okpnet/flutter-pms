// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item_kind_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listItemKindRouter];

RouteBase get $listItemKindRouter => GoRouteData.$route(
  path: '/deliverables/item/kind/list',
  name: 'kind_of_item',
  hasOverriddenOnExit: false,
  factory: $ListItemKindRouter._fromState,
);

mixin $ListItemKindRouter on GoRouteData {
  static ListItemKindRouter _fromState(GoRouterState state) =>
      const ListItemKindRouter();

  @override
  String get location => GoRouteData.$location('/deliverables/item/kind/list');

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
