// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_company_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$editCompanyRouter];

RouteBase get $editCompanyRouter => GoRouteData.$route(
  path: '/corporation/edit_company',
  name: 'edit_comapny',
  hasOverriddenOnExit: false,
  factory: $EditCompanyRouter._fromState,
);

mixin $EditCompanyRouter on GoRouteData {
  static EditCompanyRouter _fromState(GoRouterState state) =>
      const EditCompanyRouter();

  @override
  String get location => GoRouteData.$location('/corporation/edit_company');

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
