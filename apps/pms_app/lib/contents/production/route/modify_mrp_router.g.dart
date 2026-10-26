// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_mrp_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$modifyMrpRouter];

RouteBase get $modifyMrpRouter => GoRouteData.$route(
  path: '/product/modify_mrp',
  name: 'modify_mrp',
  hasOverriddenOnExit: false,
  factory: $ModifyMrpRouter._fromState,
);

mixin $ModifyMrpRouter on GoRouteData {
  static ModifyMrpRouter _fromState(GoRouterState state) =>
      const ModifyMrpRouter();

  @override
  String get location => GoRouteData.$location('/product/modify_mrp');

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
