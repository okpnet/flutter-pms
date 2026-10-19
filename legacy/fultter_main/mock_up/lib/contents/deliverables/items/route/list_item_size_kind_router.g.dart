// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item_size_kind_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listItemSizeKindRouter];

RouteBase get $listItemSizeKindRouter => GoRouteData.$route(
  path: '/deliverables/item/size/kind/list',
  name: 'list_of_item_size_kind',
  hasOverriddenOnExit: false,
  factory: $ListItemSizeKindRouter._fromState,
);

mixin $ListItemSizeKindRouter on GoRouteData {
  static ListItemSizeKindRouter _fromState(GoRouterState state) =>
      const ListItemSizeKindRouter();

  @override
  String get location =>
      GoRouteData.$location('/deliverables/item/size/kind/list');

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
