// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$appSettingRouter];

RouteBase get $appSettingRouter => GoRouteData.$route(
  path: '/setting/app',
  name: 'app_setting',
  hasOverriddenOnExit: false,
  factory: $AppSettingRouter._fromState,
);

mixin $AppSettingRouter on GoRouteData {
  static AppSettingRouter _fromState(GoRouterState state) =>
      const AppSettingRouter();

  @override
  String get location => GoRouteData.$location('/setting/app');

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
