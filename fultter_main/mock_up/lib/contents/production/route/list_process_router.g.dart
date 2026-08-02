// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_process_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$listProcessRouter];

RouteBase get $listProcessRouter => GoRouteData.$route(
  path: '/product/process',
  name: 'process',
  hasOverriddenOnExit: false,
  factory: $ListProcessRouter._fromState,
);

mixin $ListProcessRouter on GoRouteData {
  static ListProcessRouter _fromState(GoRouterState state) =>
      const ListProcessRouter();

  @override
  String get location => GoRouteData.$location('/product/process');

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
