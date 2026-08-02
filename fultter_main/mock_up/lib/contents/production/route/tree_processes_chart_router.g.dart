// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_processes_chart_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$treeProcessesChartRouter];

RouteBase get $treeProcessesChartRouter => GoRouteData.$route(
  path: '/product/processes_chart',
  name: 'tree_chart_processes',
  hasOverriddenOnExit: false,
  factory: $TreeProcessesChartRouter._fromState,
);

mixin $TreeProcessesChartRouter on GoRouteData {
  static TreeProcessesChartRouter _fromState(GoRouterState state) =>
      const TreeProcessesChartRouter();

  @override
  String get location => GoRouteData.$location('/product/processes_chart');

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
