// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_equipment_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listEquipmentRouter];

RouteBase get $listEquipmentRouter => GoRouteData.$route(
  path: '/orgresources/equipment',
  name: 'equipment',
  hasOverriddenOnExit: false,
  factory: $ListEquipmentRouter._fromState,
);

mixin $ListEquipmentRouter on GoRouteData {
  static ListEquipmentRouter _fromState(GoRouterState state) =>
      const ListEquipmentRouter();

  @override
  String get location => GoRouteData.$location('/orgresources/equipment');

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
