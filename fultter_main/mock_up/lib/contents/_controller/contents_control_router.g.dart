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
              path: '/corporation/info_cmpany',
              name: 'info_cmpany',
              hasOverriddenOnExit: false,
              factory: $InfoCompanyRouter._fromState,
              routes: [
                GoRouteData.$route(
                  path: '/corporation/edit_company',
                  name: 'edit_comapny',
                  hasOverriddenOnExit: false,
                  factory: $EditCompanyRouter._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    GoRouteData.$route(
      path: '/login',
      name: 'login',
      hasOverriddenOnExit: false,
      factory: $LoginRouter._fromState,
    ),
    GoRouteData.$route(
      path: '/login',
      name: 'login',
      hasOverriddenOnExit: false,
      factory: $LoginRouter._fromState,
    ),
    GoRouteData.$route(
      path: '/error',
      name: 'error',
      hasOverriddenOnExit: false,
      factory: $ContentsErrorRouter._fromState,
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

mixin $LoginRouter on GoRouteData {
  static LoginRouter _fromState(GoRouterState state) => const LoginRouter();

  @override
  String get location => GoRouteData.$location('/login');

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
