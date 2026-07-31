// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_company_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$infoCompanyRouter];

RouteBase get $infoCompanyRouter => GoRouteData.$route(
  path: '/corporation/info_cmpany',
  name: 'info_cmpany',
  hasOverriddenOnExit: false,
  factory: $InfoCompanyRouter._fromState,
);

mixin $InfoCompanyRouter on GoRouteData {
  static InfoCompanyRouter _fromState(GoRouterState state) =>
      const InfoCompanyRouter();

  @override
  String get location => GoRouteData.$location('/corporation/info_cmpany');

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
