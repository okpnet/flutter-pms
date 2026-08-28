// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_item_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editItemRouter];

RouteBase get $editItemRouter => GoRouteData.$route(
  path: '/deliverables/item/edit',
  name: 'item_edit',
  hasOverriddenOnExit: false,
  factory: $EditItemRouter._fromState,
);

mixin $EditItemRouter on GoRouteData {
  static EditItemRouter _fromState(GoRouterState state) =>
      const EditItemRouter();

  @override
  String get location => GoRouteData.$location('/deliverables/item/edit');

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
