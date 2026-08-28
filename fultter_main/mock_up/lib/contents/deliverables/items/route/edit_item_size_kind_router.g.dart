// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_item_size_kind_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editItemSizeKindRouter];

RouteBase get $editItemSizeKindRouter => GoRouteData.$route(
  path: '/deliverables/item/size/kind/edit',
  name: 'item_size_kind_edit',
  hasOverriddenOnExit: false,
  factory: $EditItemSizeKindRouter._fromState,
);

mixin $EditItemSizeKindRouter on GoRouteData {
  static EditItemSizeKindRouter _fromState(GoRouterState state) =>
      const EditItemSizeKindRouter();

  @override
  String get location =>
      GoRouteData.$location('/deliverables/item/size/kind/edit');

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
