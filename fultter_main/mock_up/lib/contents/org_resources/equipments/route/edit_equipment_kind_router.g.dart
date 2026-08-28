// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_equipment_kind_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editEquipmentKindRouter];

RouteBase get $editEquipmentKindRouter => GoRouteData.$route(
  path: '/orgresources/equipment/kind/edit',
  name: 'kind_of_equipment',
  hasOverriddenOnExit: false,
  factory: $EditEquipmentKindRouter._fromState,
);

mixin $EditEquipmentKindRouter on GoRouteData {
  static EditEquipmentKindRouter _fromState(GoRouterState state) =>
      const EditEquipmentKindRouter();

  @override
  String get location =>
      GoRouteData.$location('/orgresources/equipment/kind/edit');

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
