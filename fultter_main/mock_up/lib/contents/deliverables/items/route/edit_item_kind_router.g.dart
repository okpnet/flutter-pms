// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_item_kind_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editItemKindRouter];

RouteBase get $editItemKindRouter => GoRouteData.$route(
  path: '/deliverables/item/kind/edit',
  name: 'item_kind_edit',
  hasOverriddenOnExit: false,
  factory: $EditItemKindRouter._fromState,
);

mixin $EditItemKindRouter on GoRouteData {
  static EditItemKindRouter _fromState(GoRouterState state) =>
      const EditItemKindRouter();

  @override
  String get location => GoRouteData.$location('/deliverables/item/kind/edit');

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
