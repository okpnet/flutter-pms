// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_category_equipment_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listCategoryEquipmentRouter];

RouteBase get $listCategoryEquipmentRouter => GoRouteData.$route(
  path: '/equipments/category',
  name: 'category_of_equipment',
  hasOverriddenOnExit: false,
  factory: $ListCategoryEquipmentRouter._fromState,
);

mixin $ListCategoryEquipmentRouter on GoRouteData {
  static ListCategoryEquipmentRouter _fromState(GoRouterState state) =>
      const ListCategoryEquipmentRouter();

  @override
  String get location => GoRouteData.$location('/equipments/category');

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
