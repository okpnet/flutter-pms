// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_category_item_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listCategoryItemRouter];

RouteBase get $listCategoryItemRouter => GoRouteData.$route(
  path: '/items/category',
  name: 'category_of_item',
  hasOverriddenOnExit: false,
  factory: $ListCategoryItemRouter._fromState,
);

mixin $ListCategoryItemRouter on GoRouteData {
  static ListCategoryItemRouter _fromState(GoRouterState state) =>
      const ListCategoryItemRouter();

  @override
  String get location => GoRouteData.$location('/items/category');

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
