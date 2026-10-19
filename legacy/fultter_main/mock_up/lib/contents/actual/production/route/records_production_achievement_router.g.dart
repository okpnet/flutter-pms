// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records_production_achievement_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$recordsProductionAchievementRouter];

RouteBase get $recordsProductionAchievementRouter => GoRouteData.$route(
  path: '/actual/production/records',
  name: 'production_records',
  hasOverriddenOnExit: false,
  factory: $RecordsProductionAchievementRouter._fromState,
);

mixin $RecordsProductionAchievementRouter on GoRouteData {
  static RecordsProductionAchievementRouter _fromState(GoRouterState state) =>
      RecordsProductionAchievementRouter();

  @override
  String get location => GoRouteData.$location('/actual/production/records');

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
