// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$userSettingRouter];

RouteBase get $userSettingRouter => GoRouteData.$route(
  path: '/setting/user',
  name: 'user_setting',
  hasOverriddenOnExit: false,
  factory: $UserSettingRouter._fromState,
);

mixin $UserSettingRouter on GoRouteData {
  static UserSettingRouter _fromState(GoRouterState state) =>
      const UserSettingRouter();

  @override
  String get location => GoRouteData.$location('/setting/user');

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
