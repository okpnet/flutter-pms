// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_equipment_kind_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listEquipmentKindRouter];

RouteBase get $listEquipmentKindRouter => GoRouteData.$route(
  path: '/orgresources/category',
  name: 'category_of_equipment',
  hasOverriddenOnExit: false,
  factory: $ListEquipmentKindRouter._fromState,
);

mixin $ListEquipmentKindRouter on GoRouteData {
  static ListEquipmentKindRouter _fromState(GoRouterState state) =>
      const ListEquipmentKindRouter();

  @override
  String get location => GoRouteData.$location('/orgresources/category');

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
