// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contents_control_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$contentsControlRouter];

RouteBase get $contentsControlRouter => ShellRouteData.$route(
  navigatorKey: ContentsControlRouter.$navigatorKey,
  factory: $ContentsControlRouterExtension._fromState,
  routes: [
    StatefulShellRouteData.$route(
      factory: $ContentsFrameRouterExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/actual/stock_state',
              name: 'actual_stock_state',
              hasOverriddenOnExit: false,
              factory: $StockStateRouter._fromState,
            ),
          ],
        ),
      ],
    ),
  ],
);

extension $ContentsControlRouterExtension on ContentsControlRouter {
  static ContentsControlRouter _fromState(GoRouterState state) =>
      const ContentsControlRouter();
}

extension $ContentsFrameRouterExtension on ContentsFrameRouter {
  static ContentsFrameRouter _fromState(GoRouterState state) =>
      const ContentsFrameRouter();
}

mixin $StockStateRouter on GoRouteData {
  static StockStateRouter _fromState(GoRouterState state) =>
      const StockStateRouter();

  @override
  String get location => GoRouteData.$location('/actual/stock_state');

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
