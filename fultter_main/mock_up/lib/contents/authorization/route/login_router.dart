import 'package:mock_up/contents/authorization/autorization.dart';
import 'package:mock_up/imports.dart';

part 'login_router.g.dart';

abstract class LoginConstant {
  static const String name = 'login';
  static const String path = '/login';
}

@TypedGoRoute<LoginRouter>(path: LoginConstant.path, name: LoginConstant.name)
class LoginRouter extends GoRouteData with $LoginRouter {
  const LoginRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Login();
  }
}
