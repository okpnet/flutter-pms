// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contents_error_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$contentsErrorRouter];

RouteBase get $contentsErrorRouter => GoRouteData.$route(
  path: '/error',
  name: 'error',
  hasOverriddenOnExit: false,
  factory: $ContentsErrorRouter._fromState,
);

mixin $ContentsErrorRouter on GoRouteData {
  static ContentsErrorRouter _fromState(GoRouterState state) =>
      const ContentsErrorRouter();

  @override
  String get location => GoRouteData.$location('/error');

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
