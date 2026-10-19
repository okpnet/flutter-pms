// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lsit_staff_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$lsitStaffRouter];

RouteBase get $lsitStaffRouter => GoRouteData.$route(
  path: '/corporation/staff',
  name: 'staff',
  hasOverriddenOnExit: false,
  factory: $LsitStaffRouter._fromState,
);

mixin $LsitStaffRouter on GoRouteData {
  static LsitStaffRouter _fromState(GoRouterState state) =>
      const LsitStaffRouter();

  @override
  String get location => GoRouteData.$location('/corporation/staff');

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
