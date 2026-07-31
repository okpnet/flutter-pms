import '../../../imports.dart';
import '../logout.dart';

part 'logout_router.g.dart';

abstract class LogoutConstant {
  static const String name = 'logout';
  static const String path = '/logout';
}

@TypedGoRoute<LogoutRouter>(
  path: LogoutConstant.path,
  name: LogoutConstant.name,
)
class LogoutRouter extends GoRouteData with $LogoutRouter {
  const LogoutRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Logout();
  }
}
